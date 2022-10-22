# Exit immediately if a command exits with a non-zero status.
set -e

ROOT=$PWD


# build simulator firmware backend
cd ros_ws/src/crazyswarm/scripts/pycrazyswarm/cfsim
make
cd $ROOT

# ros
cd ros_ws
catkin_make -DCMAKE_BUILD_TYPE=RelWithDebInfo
cd $ROOT
