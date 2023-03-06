cmake_minimum_required(VERSION 3.5.0)
project(ogre_catkin LANGUAGES CXX)

# dont build command line tools
set(OGRE_BUILD_TOOLS            "OFF"       CACHE STRING "" FORCE)

add_subdirectory("ogre")
