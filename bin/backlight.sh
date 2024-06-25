
curbacklight=`cat /sys/class/backlight/amdgpu_bl0/brightness`

curbacklight=$((curbacklight+$1))

if ((curbacklight < 1 )); then
	curbacklight=1
fi

if ((curbacklight > 65535 )); then
	curbacklight=65535
fi

echo $curbacklight | sudo tee /sys/class/backlight/amdgpu_bl0/brightness
