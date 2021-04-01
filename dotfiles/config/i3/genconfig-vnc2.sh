#!/bin/sh
cat $HOME/.config/i3/config.base \
        $HOME/.config/i3/config.i3bar \
        $HOME/.config/i3/config.mod_key1 > $HOME/.config/i3/config
echo "bindsym \$mod+Shift+r exec $HOME/.config/i3/genconfig-vnc2.sh && i3-msg restart" >> $HOME/.config/i3/config
