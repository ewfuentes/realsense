
Launching the Docker Container
------------------------------

run `./run_docker.sh` to build and run the docker container


Realsense Viewer
----------------

Once in the docker container, run `realsense-viewer` to launch realsense viewer. Turn on the camera and depth module toggles. If the docker container has appropriate access, you should see the image and depth estimates

Recording a rosbag
------------------

 - `source /opt/ros/noetic/setup.bash`
 - `roslaunch realsense2_camera rgbd_camera.launch`
 - In a different terminal window, you can run `rviz` to view the output with a camera plugin.
 - To record: `rosbag record --all -x ".*(compressed|theora).*"`

