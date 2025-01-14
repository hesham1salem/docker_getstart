docker run -it \
  --rm \
  --name mycontainer \
  --volume $(pwd)/src/:/workspace/src/ \
  --volume /tmp/.X11-unix:/tmp/.X11-unix \
  --volume $HOME/.Xauthority:/root/.Xauthority \
  --env DISPLAY=$DISPLAY \
  --env XAUTHORITY=$XAUTHORITY \
  myimage:tag \
  tail -f /dev/null


and xhost +