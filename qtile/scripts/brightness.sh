path="/sys/class/backlight/amdgpu_bl1/brightness"

up() {
  bright=$(cat $path)
  echo $(($bright + 10)) > $path
}

down() {
  bright=$(cat $path)
  echo $(($bright - 10)) > $path
}


case $1 in
    up) "$@"; exit;;
    down) "$@"; exit;;
esac

up
down
