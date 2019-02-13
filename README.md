# leginon-tutorial
Docker image for leginon with simulated data for tutorial purpose

# Prerequisites

- A modern operating system (Linux, MacOS, Windows) 

*4+ GB of RAM*

*at least 2 GB storage space for the docker image*

- A mouse with middle click capacity

- Docker

- VNC Viewer RealVNC or TigerVNC VNC viewer.

**MacOS: Do not use remote desktop included with your Mac. Too slow.**

**<details><summary>Do you have Docker installed? If not, *click here*</summary><p>**

**Note:** You must have sudo or root access to install Docker. If you do not wish to run Docker as sudo/root, you need to configure user groups as described here: https://docs.docker.com/install/linux/linux-postinstall/

## Linux &nbsp;&nbsp; *(command line)*
*<details><summary>click to expand</summary><p>*

Download and install Docker 1.21 or greater for [Linux](https://docs.docker.com/engine/installation/)
> Consider using a Docker 'convenience script' to install (search on your OS's Docker installation webpage).

Launch docker according to your Docker engine's instructions, typically ``docker start``.
</p></details>

## MacOS 10.12 and above &nbsp;&nbsp; *(GUI)*
*<details><summary>click to expand</summary>*

Download and install Docker Desktop 2.0.0 or greater for [MacOS](https://store.docker.com/editions/community/docker-ce-desktop-mac).
<p>
</p></details>

## Windows &nbsp;&nbsp; *(GUI & command line)*
*<details><summary>click to expand</summary>*
<p>
Download and install Docker Toolbox for [Windows](https://docs.docker.com/toolbox/toolbox_install_windows/).

Launch Kitematic.
> If on first startup Kitematic displays a red error suggesting that you run using VirtualBox, do so.

</p></details>

</p></details>

<br />

# Installation
**<details><summary>Is your Leginon-Tutotial image running in your Docker already ? If not, *click here*</summary>**

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

Click `Create` on the `semc` `leginon-tutorial` repository and wait for the container to download and start.

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

# Testing the installation

### VNC into your leginon-tutorial docker image instance using this url:
*localhost:5901*

password: leginon-tutorial

### From a xterm in the docker image, type:
*start-leginon.py*

You should see leginon setup wizard gui appears.  You now have a working leginon-tutorial installation.

### Access myamiweb

one of the two ways:

- From host: start any browser and goto this url: *http://localhost:8000/myamiweb/*
- From docker image: start firefox and goto this url: *0.0.0.0:/myamiweb/*

# Troubleshooting

### leginon gui does not start

**<details><summary>RuntimeError: Must create at least one project before starting Leginon</summary><p>**
  
  *Database was not initialized properly.*
  
  Reset the database and data by running this script inside the docker image.
  
  ```sh
  /sw/resetdata.sh
  ```
</p></details>

