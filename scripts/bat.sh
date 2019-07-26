#!/bin/bash
# shows current battery percentage in dunst

# unique message id
msgID="12345"

# gets percentage from acpi
function get_bat {
  acpi | awk '{print $4}' | sed s'/.$//'
}

# prints bat to dunst notification
bat=`get_bat`
dunstify -t 5000 -r $(($msgID)) "BAT: $bat"

