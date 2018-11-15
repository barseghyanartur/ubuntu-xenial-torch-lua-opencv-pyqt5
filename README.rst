====================================
ubuntu-xenial-torch-lua-opencv-pyqt5
====================================
Ubuntu Xenial with Torch, Lua, OpenCV, PyQT5 and other useful things installed.

Build/update
============

**Build new image**

.. code-block:: sh

    docker build - < Dockerfile

**Get new image id**

.. code-block:: sh

    docker images

.. code-block:: text

    REPOSITORY                 TAG                 IMAGE ID            CREATED             SIZE
    <none>                     <none>              9604b98a983a        37 minutes ago      2.01 GB
    <none>                     <none>              054ca1c9b3a6        41 minutes ago      2 GB

**Tag new docker image**

.. code-block:: sh

    docker tag 9604b98a983a barseghyanartur/ubuntu-xenial-torch-lua-opencv-pyqt5:7

Note, that in `barseghyanartur/ubuntu-xenial-torch-lua-opencv-pyqt5/:7` - `7`
stands for tag name/version.

**Push new docker image**

.. code-block:: sh

    docker push barseghyanartur/ubuntu-xenial-torch-lua-opencv-pyqt5

Usage
=====

**Dockerfile**

Put the following in the first line:

.. code-block:: text

    FROM barseghyanartur/ubuntu-xenial-torch-lua-opencv-pyqt5:7
