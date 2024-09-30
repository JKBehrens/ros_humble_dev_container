# ros_humble_dev_container
Developement container for ROS Humble.

# Dependecies

## VSCode

VSCode is an open-source Integrated-Development-Environment (IDE) by Microsoft. It is
compatible with most operating systems and its functionality can be adapted via plugins 
(and there are many food free plugins).

Download the package for your distribution (it is `.deb` for Ubuntu) from 
(https://code.visualstudio.com/).

```console
sudo dpkg -i code_<VERSION>_amd64.deb
```
start it with `code` or with `code /rel/path/to/workspace` (often `code .`)

For updating, just donwload the new version and install over the old with the same command.

## Docker

Docker is a container engine that is often used to deploy pieces of software with their specific 
dependencies as a unit. Containerization and virtualization is a core technology in cloud computing,
DevOps, and other fields. It is very mature and there are no concerns to employ it as a tool in 
research.

Installation on [Ubuntu](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)
 and [Windows](https://docs.docker.com/desktop/install/windows-install/) easy.

Here the steps for Ubuntu: 

```console
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
```

Install latest version
```console
 sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

Test installation
```console
sudo docker run hello-world
```

Do the following to manage docker without `sudo`. See the security **Warning**
The `docker` group grants root-level privileges to the user. For details on how this impacts security in your system, see [Docker Daemon Attack Surface](https://docs.docker.com/engine/security/#docker-daemon-attack-surface).

Add a group named docker and add your user:
```console
sudo groupadd docker
```
```console
sudo usermod -aG docker $USER
```
Now log out and in. Try if docker works without `sudo`:
```console
docker run hello-world
```

## Installation

clone this repo to a folder of your choice. this will become the ROS 2 workspace and also be mapped to the container.
`git clone git@github.com:JKBehrens/ros_humble_dev_container.git`

`cd ros_humble_dev_container`


Open VSCode and open the folder `ros_humble_dev_container`. Reopen the folder in the devcontainer (click on the small green box in the bottom left).


# Credits
I was very much insprired by Allison Thackston's [article](https://www.allisonthackston.com/articles/docker-development.html), 
the [ROS 2 documentation on using docker](https://docs.ros.org/en/humble/How-To-Guides/Run-2-nodes-in-single-or-separate-docker-containers.html#),
and [ROS 2 documentation of using devcontainers](https://docs.ros.org/en/humble/How-To-Guides/Setup-ROS-2-with-VSCode-and-Docker-Container.html).

