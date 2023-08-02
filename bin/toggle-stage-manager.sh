manager_enabled=$(defaults read com.apple.WindowManager GloballyEnabled)
echo $manager_enabled

current_index=$(yabai -m query --spaces | jq -r '.[] | select(."has-focus"==true) | .index')
echo $current_index

if [ $manager_enabled == 1 ] ; then
    defaults write com.apple.WindowManager GloballyEnabled -bool false
    yabai -m config --space $current_index left_padding 10
else
    defaults write com.apple.WindowManager GloballyEnabled -bool true
    yabai -m config --space $current_index left_padding 170
    yabai -m space $current_index --layout stack
fi
