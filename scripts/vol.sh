#!/bin/bash
# volume change script for pulseaudio

# unique message id
msgID="12345"

# current volume 
function get_volume {
	pamixer --get-volume
}

volume=`get_volume`

case $1 in
	up)
		# increase volume
		pamixer --set-volume $(($volume + 10))
		volume=`get_volume`
		dunstify -t 5000 -r $(($msgID)) "VOL: $volume%"
		;;
	down)
		#decrease volume
		pamixer --set-volume $(($volume - 10))
		volume=`get_volume`
		dunstify -t 5000 -r $(($msgID)) "VOL: $volume%"
		;;
esac
