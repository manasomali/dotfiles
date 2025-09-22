# The Sway configuration file in ~/.config/sway/config calls this script.
# You should see changes to the status bar after saving this script.
# If not, do "killall swaybar" and $mod+Shift+c to reload the configuration.

# The abbreviated weekday (e.g., "Sat"), followed by the ISO-formatted date
# like 2018-10-06 and the time (e.g., 14:01)
date_formatted=$(date "+%d/%m (%A) %H:%M:%S")

battery_info=$(upower --show-info $(upower --enumerate |\
grep 'BAT') |\
egrep "percentage" |\
awk '{print $2}')


# Emojis and characters for the status bar
# 💎 💻 💡 🔌 ⚡ 📁 \|
echo $date_formatted $battery_info

