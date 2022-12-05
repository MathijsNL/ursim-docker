docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -v /mnt/wslg:/mnt/wslg \
    --cpus=1 \
    --cap-add=sys_nice \
    --ulimit rtprio=99 \
    --ulimit memlock=1024000 \
    --volume /sys/fs/cgroup:/sys/fs/cgroup:ro \
    -e DISPLAY=$DISPLAY -e WAYLAND_DISPLAY=$WAYLAND_DISPLAY \
    -e XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR -e PULSE_SERVER=$PULSE_SERVER \
    -e URTYPE=UR16 ursim_e:latest
