# ensure directory mounts exist on host
mkdir -p ~/.ollama
podman run -t -d  \
       -v ~/.Xauthority:/root/.Xauthority:Z \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       --net=host \
       -e DISPLAY=$DISPLAY \
       -e WAYLAND_DISPLAY=$WAYLAND_DISPLAY \
       -e XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR \
       -e PULSE_SERVER=$PULSE_SERVER \
       -v ~/work:/work \
       -v ~/.emacs.d:/root/.emacs.d \
       -v ~/.emacs:/root/.emacs \
       -v ~/.ollama:/root/.ollama \
       localhost/python-dev-container:latest
