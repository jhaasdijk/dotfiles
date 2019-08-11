intern=eDP-1
extern=DP-2-3

if xrandr | grep "$extern connected"; then
    xrandr --output "$intern" --off --output "$extern" --auto --primary
else
    xrandr --output "$extern" --off --output "$intern" --auto --primary
fi

