#!/bin/sh

cat <<EOT >> $HOME/.config/lxqt/panel.conf
[mainmenu]
alignment=Left
filterClear=true
filterShowHideMenu=false
icon=/usr/share/endeavouros/EndeavourOS-icon.png
menu_file=/etc/xdg/menus/lxqt-applications-compact.menu
ownIcon=true
showText=true
text="Ringo "
type=mainmenu



[quicklaunch]
alignment=Left
apps\1\desktop=/usr/share/applications/qterminal.desktop
apps\2\desktop=/usr/share/applications/pcmanfm-qt.desktop
apps\3\desktop=/usr/share/applications/firefox.desktop
apps\size=3
type=quicklaunch
EOT

cat <<EOT >> $HOME/.config/lxqt/session.conf

[General]
__userfile__=true
leave_confirmation=false
lock_screen_before_power_actions=false
window_manager=openbox

[Environment]
BROWSER=/usr/bin/falkon
GTK_CSD=0
GTK_OVERLAY_SCROLLING=0
TERM=qterminal

EOT

cat <<EOT >> $HOME/.config/lxqt/lxqt.conf
[General]
__userfile__=true
icon_follow_color_scheme=false
icon_theme=Qogir-dark
theme=EOS-Leech

[Palette]
base_color=#fbfbfc
highlight_color=#3c8ce6
highlighted_text_color=#ffffff
link_color=#0000ff
link_visited_color=#ff00ff
text_color=#000000
window_color=#f5f6f7
window_text_color=#000000

[Qt]
style=Fusion
EOT
 
cat <<EOT >> $HOME/.config/pcmanfm-qt/default/settings.conf
[System]
Archiver=lxqt-archiver
FallbackIconThemeName=oxygen
OnlyUserTemplates=false
SIUnit=false
SuCommand=lxqt-sudo dbus-run-session -- %s
TemplateRunApp=false
TemplateTypeOnce=false
Terminal=qterminal

EOT



killall lxqt-panel && lxqt-panel &
rm $HOME/.config/autostart/set_once_lxqt.desktop $HOME/set_once_lxqt.sh
