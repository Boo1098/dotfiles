#!/bin/sh
cat $HOME/.config/i3/config.base \
        $HOME/.config/i3/config.default_apps \
        $HOME/.config/i3/config.polybar \
        $HOME/.config/i3/config.mod_key1 > $HOME/.config/i3/config
echo "bindsym \$mod+Shift+r exec $HOME/.config/i3/genconfig-local.sh && i3-msg restart" >> $HOME/.config/i3/config
