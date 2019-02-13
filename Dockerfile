FROM centos:7
MAINTAINER Anchi Cheng <acheng@nysbc.org>
LABEL authors="Neil Voss, Carl Negro, Alex Noble, Anchi Cheng"

COPY startup.sh /sw/startup.sh
### install software
RUN yum -y install epel-release yum && yum -y install \
 wget sudo passwd rsync tar openssh-clients \
 python-matplotlib boost148-python \
 ImageMagick bash-completion firefox dbus \
 wxPython numpy scipy python-imaging python2-pip \
 git mariadb mariadb-server MySQL-python \
 httpd php php-mysql mod_ssl \
 gcc-c++ libtiff-devel python-argparse \
 php-devel fftw3-devel php-gd \
 xorg-x11-server-Xvfb python-requests \
 libssh2-devel nano file numactl vim \
 python-configparser mlocate nc screen \
 gtkglext-libs pangox-compat tcsh gedit \
#
### VNC
 tigervnc-server xterm xsetroot fluxbox \
 xorg-x11-xinit xorg-x11-font-utils xorg-x11-fonts-Type1 xorg-x11-xauth  \
 libX11-common libX11 dbus-x11 xorg-x11-server-utils xorg-x11-xkb-utils \
 xorg-x11-fonts-75dpi xorg-x11-fonts-100dpi xorg-x11-fonts-misc \
 && yum -y upgrade --exclude=filesystem* \
 && yum -y clean all && rm -rf /var/cache/yum \
# filesystem doesn't update properly for some reason
#
### MariaDB setup
&& sed -i.bak 's/max_allowed_packet = [0-9]*M/max_allowed_packet = 24M/' /etc/my.cnf \
#
### Appion specific installs   
&& dbus-uuidgen > /var/lib/dbus/machine-id \
&& pip --no-cache-dir install --upgrade pip \
&& pip --no-cache-dir install joblib pyfftw3 fs==0.5.4 \
&& updatedb \
&& mkdir -p /emg/data/leginon /emg/data/frames /emg/data/appion /sw/sql \
&& chmod 777 -R /emg

### Apache setup
COPY config/sinedon.cfg config/leginon.cfg config/instruments.cfg config/pyami.cfg config/appion.cfg config/redux.cfg /etc/myami/
COPY config/php.ini config/bashrc /etc/
COPY config/info.php /var/www/html/info.php
COPY sql/ /sw/sql/
EXPOSE 80 5901

### myami
RUN git clone -b myami-tutorial http://emg.nysbc.org/git/myami /sw/myami \
### eman1
&& wget http://emg.nysbc.org/redmine/attachments/download/10961/eman-linux-x86_64-cluster-1.9_stripped.tar.gz && tar xzfv eman-linux-x86_64-cluster-1.9_stripped.tar.gz -C /sw && rm eman-linux-x86_64-cluster-1.9_stripped.tar.gz \
&& ln -sv /sw/eman1/lib/libpyEM.so.ucs4.py2.6 /sw/eman1/lib/libpyEM.so \
#
### Myami setup
&& chmod 444 /var/www/html/info.php \
&& ln -sv /sw/myami/myamiweb /var/www/html/myamiweb \
&& mkdir -p /etc/myami /var/cache/myami/redux/ && chmod 777 /var/cache/myami/redux/ \
&& ln -sv /sw/myami/appion/appionlib /usr/lib64/python2.7/site-packages/ \
&& ln -sv /sw/myami/redux/bin/reduxd /usr/bin/ && chmod 755 /usr/bin/reduxd \
&& for i in pyami myami_test imageviewer leginon pyscope sinedon redux; \
	do ln -sv /sw/myami/$i /usr/lib64/python2.7/site-packages/; done \
#
### Compile numextension and redux
&& cd /sw/myami/modules/numextension \
&& python ./setup.py install \
&& cd /sw/myami/redux \
&& python ./setup.py install \
#
&& mkdir /etc/fftw \
&& python /sw/myami/pyami/fft/fftwsetup.py 2 4096 4096 && mv -v ~/fftw3-wisdom-* /etc/fftw/wisdom \
&& python /sw/myami/pyami/fft/fftwsetup.py 2 3838 3710 && mv -v ~/fftw3-wisdom-* /etc/fftw/wisdom \
&& cp -v /sw/myami/redux/init.d/reduxd /etc/init.d/reduxd \
#
### Change to local user
&& useradd -d /home/leginonuser -g 100 -p 'leginon-tutorial' -s /bin/bash leginonuser && usermod -aG wheel leginonuser \
&& chmod 777 /home/leginonuser \
&& chown -R leginonuser:users /home/leginonuser /emg/data \
&& mkdir -p /home/leginonuser/.vnc /home/leginonuser/.config/fbpanel \
&& touch /home/leginonuser/.Xauthority \
&& chmod 777 /home/leginonuser/.vnc \
&& echo leginon-tutorial | vncpasswd -f > /home/leginonuser/.vnc/passwd \
&& echo "root:leginon-tutorial" | chpasswd \
&& chmod 600 /home/leginonuser/.vnc/passwd
ENV HOME /home/leginonuser
USER root
COPY config/xstartup /home/leginonuser/.vnc/xstartup
COPY config/fbpanel-default /home/leginonuser/.config/fbpanel/default
COPY config/config.php /sw/myami/myamiweb/config.php
RUN chown -R leginonuser:users /home/leginonuser /emg/data \
&& mkdir -p /emg/data/ \
&& chmod -R 777 /emg/ \
&& cp -rf /sw/myami/tutorial_data/simimages /emg \
&& chmod 700 /home/leginonuser/.vnc/xstartup \
&& rm -rf root/.cache/ /anaconda-post.log \
&& sed -i -e '/rctv/d' /sw/myami/myamiweb/index.php \
&& updatedb

COPY resetdata.sh /sw/resetdata.sh
COPY startup.sh /sw/startup.sh
CMD /sw/startup.sh
