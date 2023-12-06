FROM osrf/ros:noetic-desktop-full

RUN apt update
RUN apt install curl

RUN mkdir -p /etc/apt/keyrings && \
    curl -sSf https://librealsense.intel.com/Debian/librealsense.pgp > /etc/apt/keyrings/librealsense.pgp
RUN echo "deb [signed-by=/etc/apt/keyrings/librealsense.pgp] https://librealsense.intel.com/Debian/apt-repo `lsb_release -cs` main" > /etc/apt/sources.list.d/librealsense.list

RUN apt update
RUN apt install -y apt-transport-https librealsense2-dkms librealsense2-utils librealsense2-dev \
	librealsense2-dbg librealsense2-udev-rules 
RUN apt install -y ros-noetic-realsense2-camera ros-noetic-rgbd-launch tmux

COPY .tmux.conf /root/.tmux.conf
	

