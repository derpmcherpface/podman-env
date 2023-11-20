podman run -t -d  \
       -v ~/.Xauthority:/root/.Xauthority:Z \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       --net=host \
       -e DISPLAY=$DISPLAY \
	   -e WAYLAND_DISPLAY=$WAYLAND_DISPLAY \
	   -e XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR \
	   -e PULSE_SERVER=$PULSE_SERVER \
	   -v ~/work:/work \
	   localhost/my-test-container:latest
#     c7f0e13e6bfc
