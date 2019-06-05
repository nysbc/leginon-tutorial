# leginon-tutorial
Docker container image for leginon with simulated data for tutorial purpose

# Prerequisites

- A modern operating system (Linux, MacOS, Windows) 

*8 GB of RAM*

*at least 2 GB storage space for the docker container image*

- A display with 1920 x 1200 resolution.

- A mouse with middle click capacity

- Docker

**Set memory to 4 GB instead of the default 2 GB**

- VNC Viewer RealVNC or TigerVNC VNC viewer.

**MacOS: Do not use remote desktop included with your Mac. Too slow.**

**<details><summary>Do you have Docker installed? If not, *click here*</summary><p>**

**Note:** You must have sudo or root access to install Docker. If you do not wish to run Docker as sudo/root, you need to configure user groups as described here: https://docs.docker.com/install/linux/linux-postinstall/

## Linux &nbsp;&nbsp; *(command line)*
*<details><summary>click to expand</summary><p>*

Download and install Docker 1.21 or greater for [Linux](https://docs.docker.com/engine/installation/)
> Consider using a Docker 'convenience script' to install (search on your OS's Docker installation webpage).

Launch docker according to your Docker engine's instructions, typically ``docker start``.

</p><p>
  
**Set memory to 4 GB from Docker Advanced Preference**
</p>

</p></details>

## MacOS 10.12 and above &nbsp;&nbsp; *(GUI)*
*<details><summary>click to expand</summary>*

Download and install Docker Desktop 2.0.0 or greater for [MacOS](https://store.docker.com/editions/community/docker-ce-desktop-mac).
<p>
  
**Set memory to 4 GB from Docker Advanced Preference**
</p></details>


## Windows &nbsp;&nbsp; *(GUI & command line)*
*<details><summary>click to expand</summary>*
<p>
Download and install Docker Toolbox for [Windows](https://docs.docker.com/toolbox/toolbox_install_windows/).

</p><p>

**Set memory to 4 GB**
</p>

Launch Kitematic.
> If on first startup Kitematic displays a red error suggesting that you run using VirtualBox, do so.

</p></details>

</p></details>

**<details><summary>Do you have TigerVNC or RealVNC Viewer on your host ? If not, *click here*</summary>**
  
- Download and install a VNC viewer such as TigerVNC or RealVNC:

https://bintray.com/tigervnc/stable/tigervnc/1.9.0

https://www.realvnc.com/en/connect/download/viewer/macos/

</p></details>

<br />

# Installation
**<details><summary>Do you have a Leginon-Tutotial container running in your Docker already ? If not, *click here*</summary>**

> **Note:** The installation directory will contain the data directory. 

## Linux/MacOS &nbsp;&nbsp; *(command line)*
*<details><summary>click to expand</summary><p>*
```sh
cd
git clone http://github.com/nysbc/leginon-tutorial
cd leginon-tutorial
./run.sh
```
*<details><summary>This performs the following operations (click to expand):</summary><p>*
- Downloads the semc/leginon-tutorial repository from github saved into a local leginon-tutorial directory under your home directory.

- Build a docker image from that,

- Downloads the nysbc/leginon-tutorial repository from github saved into a local leginon-tutorial directory.

- Download the semc/leginon-tutorial image from Docker Hub to your local docker.

- Creates a Docker volume to persist the Mariadb database,

- Mounts `~/leginon-tutorial/emg/data` on the host side to `/emg/data` inside the running container,

- Mounts the `mariadb-database` Docker volume to `/var/lib/mysql` inside the running container,

- Mounts the `~/leginon-tutorial` directory to `/local_data` inside the running container,

- Opens ports 8000 for web traffic, 33060 for database traffic, and 5901 for VNC'ing on the host side to forward into the running container as needed.
- Waits for the mysqld_safe database daemon to launch (for ~10 seconds, but could in rare instances take longer).

</p></details>

</p></details>

## Windows &nbsp;&nbsp; *(GUI & command line)*
*<details><summary>click to expand</summary><p>*
In the Kitematic search bar type: `semc/leginon-tutorial`.

Click `Create` on the `semc` `leginon-tutorial` repository and wait for the image to download and launch.

**_<details><summary>Click for image</summary><p>_**

  ![](https://i.imgur.com/D6P0c3J.png)

  </p></details>

*<details><summary>In Windows, you may need to tweak your settings (click to expand)</summary><p>*

  If you needed to run Docker using VirtualBox, then you will need to increase the amount of RAM allocated to Docker:

  - Stop the Docker container,

  - Open VirtualBox,

  - Shut down the running virtual machine,

  - Edit the Settings for the virtual machine you just shut down,

  - Increase the RAM to 8+ GB,

  - Re-start the container.
  **_<details><summary>Click for images</summary><p>_**

    ![](https://i.imgur.com/VDa8UNj.png)

    ![](https://i.imgur.com/JOYbNbG.png)

    - **Close Kitematic**

    ![](https://i.imgur.com/whV3ykr.png)

    ![](https://i.imgur.com/xmz1vhX.png)

    - Increase the allocated RAM for the virtual machine:

    ![](https://i.imgur.com/KQAnxwZ.png)

    - **Start Kitematic**

    </p></details>
  </p></details>

</p></details>

</p></details>

<br />

# VNC access and web access url for your docker container.

**_<details><summary>Write them down.  This is how you access it later. Click to expand</summary><p>_**

## Linux/MacOS

*<details><summary>Click to expand</summary><p>*

**VNC access url:** *localhost:5901*

- password: leginon-tutorial

**Web access:**

one of the two ways:

- From host: start any browser and goto this url: *http://localhost:8000/myamiweb/*

- Inside the docker container: start firefox and goto this url: *0.0.0.0:/myamiweb/*

</p></details>

## Windows &nbsp;&nbsp; *(GUI)*

*<details><summary>Click to expand</summary><p>*

- To find the port, in Kitematic click on `Settings` the `Hostname/Ports`.

- The address and port next to *Docker Port 5901* is for vnc access. In the example shown this means

*192.168.99.100:32771* password: leginon-tutorial

**_<details><summary>Click for images ![seehow](https://i.imgur.com/QR7ItjO.png)</summary><p>_**

![](https://i.imgur.com/LnEVAtr.png)

</p></details>

- The address and port next to *Docker Port 80* is for web access.  In the example shown this means

*192.168.99.100:32770/myamiweb/*

**_<details><summary>Click for images ![seehow](https://i.imgur.com/QR7ItjO.png)</summary><p>_**

![](https://i.imgur.com/siObtGj.png)

- This should open up your web browser to the displayed address:

![](https://i.imgur.com/ELap1yX.png)

- Append `/myamiweb/` to the address:

![](https://i.imgur.com/T9RMvBX.png)

</p></details>

</p></details>

</p></details>

<br />

# terminal access to your docker container.

*_<details><summary>Through root access of the container(click to expand)</summary><p>_*
From your host computer terminal:
</p><p>

```sh
cd
cd _your_leginon_tutorial_download_or_git_clone_
./exec.sh
container_root>su leginonuser
```
</p></details>


# Testing the installation

### VNC into your leginon-tutorial container using the VNC access url found above:

password: leginon-tutorial

**_<details><summary>Click for images ![seehow](https://i.imgur.com/QR7ItjO.png)</summary><p>_**

![](https://i.imgur.com/zFiviSL.png)

- The VNC viewer should open:

![](https://i.imgur.com/8BrWwzV.png)

- This allows you to run commands in the image xterm

</p></details>


### From an xterm in the docker container VNC window, type:
*start-leginon.py*

You should see leginon setup wizard gui appears [like this](docs/start-leginon.png).  You now have a working leginon-tutorial installation.

<br />

# Troubleshooting

### leginon gui does not start

**<details><summary>RuntimeError: Must create at least one project before starting Leginon</summary><p>**
  
  *Database was not initialized properly.*
  
  Reset the database and data by running this script inside the docker container.
  
  ```sh
  /sw/resetdata.sh
  ```
</p></details>

# Usage

## Launch Docker

*<details><summary>Make sure Docker is running:</summary><p>*

- On CentOS or Ubuntu, type:  `sudo systemctl start docker`.<br />
- On OSX with Docker Desktop, Start it from Application Launch Pad.<br />
- On Windows, Kitematic launches Docker automatically.

</p></details>

## Run the container

*<details><summary>Make sure you have the docker container running:</summary><p>*

## Linux/MacOS &nbsp;&nbsp; *(command line)*

```sh
docker ps
```
IMAGE field should include "leginon-tutorial" if its container is running.

## Windows &nbsp;&nbsp; *(gui)*

Select the image in the gui and see if the gui gives you the option to stop.  If it does, it is running.

</p></details>


*<details><summary>To RUN and to STOP the container : </summary><p>*

## Linux/MacOS &nbsp;&nbsp; *(command line)*

**_<details><summary>Click to expand</summary><p>_**

- Navigate to the leginon-tutorial installation directory to access various commands

```sh
cd
cd leginon-tutorial
```

- To launch a running container of the leginon-tutorial image, do:

```./run.sh```

- To stop the container running (this does not delete the container), do:

```./kill.sh``` (Warning, this will stop any other Docker containers you have running as well, use with caution!)


*<details><summary>Click for additional Docker Leginon-Tutorial container commands</summary><p>*

- To ssh into the container as root, do:

```./exec.sh```

- To remove the container, but not the mounted data in /emg/data or the volume at /var/lib/mysql, do:

``` ./rmContainers.sh``` (Warning: This will delete any other inactive containers you may have running as well!)

- To delete the mariadb-database volume, do:

```./rmVolume.sh``` (Warning: This will delete the database and anything you have uploaded in Appion! The volume will be recreated the next time you do ./run.sh, but you will have an empty Appion database!)

- To re-build the leginon-tutorial image from scratch, do:

```./build.sh``` (This will take a while!)

</p></details>

</p></details>

## Windows &nbsp;&nbsp; *(gui)*

**_<details><summary>Click to expand</summary><p>_**

Select the image in the gui:

- Click "play" button to start

- Click "stop" button to stop

</p></details>

</p></details>

</p></details>

<br />

# Questions ?

## Installation: email acheng@nysbc.org and mention leginon-tutorial
## Usage: see leginon.org
