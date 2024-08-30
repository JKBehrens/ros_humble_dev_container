# ros_humble_dev_container
Developement container for ROS Humble


## Installation

clone this repo to a folder of your choice. this will become the ROS 2 workspace and also be mapped to the container.
`git clone git@github.com:JKBehrens/ros_humble_dev_container.git`

`cd ros_humble_dev_container`

clone some dependencies into a folder called lib
`./post_install_host.sh`

Open VSCode and open the folder `ros_humble_dev_container`. Reopen the folder in the devcontainer (click on the small green box in the bottom left).

Open a terminal in vscode and run
`./post_install_container.sh`

Clone the data collector ROS package into the folder `src` (you might need to do that on the host, because the ssh keys are not mapped into the container)
`git clone git@github.com:JKBehrens/imitrob_ros_calib_data_collector.git `


