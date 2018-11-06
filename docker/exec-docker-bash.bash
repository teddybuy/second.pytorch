docker exec -it `docker ps -a -f label=second -q` bash -c "source /opt/ros/\$ROS_DISTRO/setup.bash; bash"
