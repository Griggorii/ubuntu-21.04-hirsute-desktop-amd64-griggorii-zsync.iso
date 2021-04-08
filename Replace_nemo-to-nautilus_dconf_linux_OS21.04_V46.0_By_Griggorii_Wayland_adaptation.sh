#!/bin/bash

####Griggorii@gmail.com mit license dconf-config

mkdir backup-theme-icon
EOF
cd backup-theme-icon
EOF
dconf dump /org/cinnamon/desktop/interface/ > backup-cinnamon-theme-icon-mouse-font.dconf
EOF
dconf dump /org/gnome/desktop/interface/ > backup-gnome-theme-icon-mouse-font.dconf
EOF
dconf dump /org/gnome/shell/extensions/user-theme/ > backup-gnome-shell-theme.dconf
EOF
dconf dump /org/cinnamon/desktop/background/ > backup-cinnamon-background-wallpaper.dconf
EOF
dconf dump /org/gnome/desktop/background/ > backup-gnome-wallpaper.dconf
EOF
dconf dump /org/gnome/desktop/screensaver/ > backup-gnome-screensaver-wallpaper.dconf
EOF
cd -
EOF
tar -czvf backup-theme-icon.tar.gz ./backup-theme-icon 
EOF
rm -rf ./backup-theme-icon
EOF
cat << EOF > backup-theme-icon-restore.sh
tar -xzvf ./backup-theme-icon.tar.gz && cd backup-theme-icon && dconf load /org/cinnamon/desktop/interface/ < backup-cinnamon-theme-icon-mouse-font.dconf && dconf load /org/gnome/desktop/interface/ < backup-gnome-theme-icon-mouse-font.dconf && dconf load /org/gnome/shell/extensions/user-theme/ < backup-gnome-shell-theme.dconf && dconf load /org/cinnamon/desktop/background/ < backup-cinnamon-background-wallpaper.dconf && dconf load /org/gnome/desktop/background/ < backup-gnome-wallpaper.dconf && dconf load /org/gnome/desktop/screensaver/ <  backup-gnome-screensaver-wallpaper.dconf && rm -rf backup-cinnamon-theme-icon-mouse-font.dconf backup-gnome-theme-icon-mouse-font.dconf backup-gnome-shell-theme.dconf backup-cinnamon-background-wallpaper.dconf backup-gnome-wallpaper.dconf backup-gnome-screensaver-wallpaper.dconf ./backup-cinnamon-theme-icon-mouse-font.dconf ./backup-gnome-theme-icon-mouse-font.dconf ./backup-gnome-shell-theme.dconf && cd - && rm -rf ./backup-theme-icon.tar.gz ./backup-theme-icon ./backup-cinnamon-background-wallpaper.dconf ./backup-gnome-wallpaper.dconf ./backup-gnome-screensaver-wallpaper.dconf backup-theme-icon-restore.sh
EOF
chmod -R a+rwx backup-theme-icon-restore.sh
EOF
mkdir ~/.config/autostart/
EOF
dconf dump / > dconf-settings-original-restore_21.04.ini
EOF
dconf reset -f /
EOF
gsettings set org.gnome.shell.extensions.user-theme name "Orchis"
EOF
xdg-mime default nautilus.desktop inode/directory
EOF
xdg-mime default org.gnome.Nautilus.desktop inode/directory
EOF
update-mime-database ~/.local/share/mime
EOF
cat << EOF > qt5ct.conf
[Appearance]
color_scheme_path=/usr/share/qt5ct/colors/simple.conf
custom_palette=false
standard_dialogs=gtk2
style=gtk2

[Fonts]
fixed=@Variant(\0\0\0@\0\0\0\x16\0U\0\x62\0u\0n\0t\0u\0 \0M\0o\0n\0o@&\0\0\0\0\0\0\xff\xff\xff\xff\x5\x1\0\x32\x10)
general=@Variant(\0\0\0@\0\0\0\f\0U\0\x62\0u\0n\0t\0u@&\0\0\0\0\0\0\xff\xff\xff\xff\x5\x1\0K\x10)

[Interface]
activate_item_on_single_click=2
buttonbox_layout=2
cursor_flash_time=1000
dialog_buttons_have_icons=2
double_click_interval=400
gui_effects=General, AnimateMenu, AnimateCombo, AnimateTooltip, AnimateToolBox
keyboard_scheme=4
menus_have_icons=true
show_shortcuts_in_context_menus=true
stylesheets=@Invalid()
toolbutton_style=4
underline_shortcut=2
wheel_scroll_lines=3

[SettingsWindow]
geometry=@ByteArray(\x1\xd9\xd0\xcb\0\x3\0\0\0\0\0\xe1\0\0\0\b\0\0\x3\xc1\0\0\x2\xde\0\0\0\xe2\0\0\0&\0\0\x3\xc0\0\0\x2\xdd\0\0\0\0\0\0\0\0\x5V\0\0\0\xe2\0\0\0&\0\0\x3\xc0\0\0\x2\xdd)
EOF
cp qt5ct.conf ~/.config/qt5ct/
EOF
rm qt5ct.conf
EOF
cat << EOF > accels.scm
; mousepad GtkAccelMap rc-file         -*- scheme -*-
; this file is an automated accelerator map dump
;
; (gtk_accel_path "<Actions>/MousepadWindow/back" "<Primary>Page_Up")
; (gtk_accel_path "<Actions>/MousepadWindow/help-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/line-numbers" "")
; (gtk_accel_path "<Actions>/MousepadWindow/uppercase" "")
; (gtk_accel_path "<Actions>/MousepadWindow/word-wrap" "")
; (gtk_accel_path "<Actions>/MousepadWindow/redo" "<Primary>y")
; (gtk_accel_path "<Actions>/MousepadWindow/tab-size_3" "")
; (gtk_accel_path "<Actions>/MousepadWindow/unix" "")
; (gtk_accel_path "<Actions>/MousepadWindow/recent-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/replace" "<Primary>r")
; (gtk_accel_path "<Actions>/MousepadWindow/save" "<Primary>s")
; (gtk_accel_path "<Actions>/MousepadWindow/find-next" "<Primary>g")
; (gtk_accel_path "<Actions>/MousepadWindow/select-all" "")
; (gtk_accel_path "<Actions>/MousepadWindow/tab-size_2" "")
; (gtk_accel_path "<Actions>/MousepadWindow/go-to" "<Primary>l")
; (gtk_accel_path "<Actions>/MousepadWindow/mac" "")
; (gtk_accel_path "<Actions>/MousepadWindow/line-up" "")
; (gtk_accel_path "<Actions>/MousepadWindow/document-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/transpose" "<Primary>t")
; (gtk_accel_path "<Actions>/MousepadWindow/undo" "<Primary>z")
; (gtk_accel_path "<Actions>/MousepadWindow/edit-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/tab-size-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/delete" "")
; (gtk_accel_path "<Actions>/MousepadWindow/clear-recent" "")
; (gtk_accel_path "<Actions>/MousepadWindow/save-as" "<Primary><Shift>s")
; (gtk_accel_path "<Actions>/MousepadWindow/contents" "F1")
; (gtk_accel_path "<Actions>/MousepadWindow/strip-trailing" "")
; (gtk_accel_path "<Actions>/MousepadWindow/tab-size-other" "")
; (gtk_accel_path "<Actions>/MousepadWindow/save-all" "")
; (gtk_accel_path "<Actions>/MousepadWindow/menubar" "")
; (gtk_accel_path "<Actions>/MousepadWindow/move-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/print" "<Primary>p")
; (gtk_accel_path "<Actions>/MousepadWindow/about" "")
; (gtk_accel_path "<Actions>/MousepadWindow/revert" "")
; (gtk_accel_path "<Actions>/MousepadWindow/paste" "<Primary>v")
; (gtk_accel_path "<Actions>/MousepadWindow/copy" "<Primary>c")
; (gtk_accel_path "<Actions>/MousepadWindow/increase-indent" "")
; (gtk_accel_path "<Actions>/MousepadWindow/convert-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/change-selection" "")
; (gtk_accel_path "<Actions>/MousepadWindow/no-recent-items" "")
; (gtk_accel_path "<Actions>/MousepadWindow/lowercase" "")
; (gtk_accel_path "<Actions>/MousepadWindow/paste-column" "")
; (gtk_accel_path "<Actions>/MousepadWindow/file-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/eol-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/forward" "<Primary>Page_Down")
; (gtk_accel_path "<Actions>/MousepadWindow/detach" "<Primary>d")
; (gtk_accel_path "<Actions>/MousepadWindow/spaces-to-tabs" "")
; (gtk_accel_path "<Actions>/MousepadWindow/tab-size_8" "")
; (gtk_accel_path "<Actions>/MousepadWindow/new" "<Primary>n")
; (gtk_accel_path "<Actions>/MousepadWindow/dos" "")
; (gtk_accel_path "<Actions>/MousepadWindow/font" "")
; (gtk_accel_path "<Actions>/MousepadWindow/template-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/close-window" "<Primary>q")
; (gtk_accel_path "<Actions>/MousepadWindow/opposite-case" "")
; (gtk_accel_path "<Actions>/" "")
; (gtk_accel_path "<Actions>/MousepadWindow/open" "<Primary>o")
; (gtk_accel_path "<Actions>/MousepadWindow/write-bom" "")
; (gtk_accel_path "<Actions>/MousepadWindow/cut" "<Primary>x")
; (gtk_accel_path "<Actions>/MousepadWindow/decrease-indent" "")
; (gtk_accel_path "<Actions>/MousepadWindow/auto-indent" "")
; (gtk_accel_path "<Actions>/MousepadWindow/preferences" "")
; (gtk_accel_path "<Actions>/MousepadWindow/fullscreen" "F11")
; (gtk_accel_path "<Actions>/MousepadWindow/close" "<Primary>w")
; (gtk_accel_path "<Actions>/MousepadWindow/new-window" "<Primary><Shift>n")
; (gtk_accel_path "<Actions>/MousepadWindow/search-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/view-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/tabs-to-spaces" "")
; (gtk_accel_path "<Actions>/MousepadWindow/duplicate" "")
; (gtk_accel_path "<Actions>/MousepadWindow/language-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/statusbar" "")
; (gtk_accel_path "<Actions>/MousepadWindow/line-down" "")
; (gtk_accel_path "<Actions>/MousepadWindow/mousepad-tab-0" "<Alt>1")
; (gtk_accel_path "<Actions>/MousepadWindow/tab-size_4" "")
; (gtk_accel_path "<Actions>/MousepadWindow/insert-spaces" "")
; (gtk_accel_path "<Actions>/MousepadWindow/titlecase" "")
; (gtk_accel_path "<Actions>/MousepadWindow/find-previous" "<Primary><Shift>g")
; (gtk_accel_path "<Actions>/MousepadWindow/color-scheme-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/paste-history" "")
; (gtk_accel_path "<Actions>/MousepadWindow/toolbar" "")
; (gtk_accel_path "<Actions>/MousepadWindow/paste-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/find" "<Primary>f")
EOF
cp accels.scm ~/.config/Mousepad/
EOF
rm accels.scm
EOF
cat << EOF > leafpadrc
0.8.18.1
827
484
Monospace 12
0
0
0
EOF
cp leafpadrc ~/.config/leafpad/
EOF
rm leafpadrc
EOF
cat << EOF > dconf-settings-original-restore.sh
dconf load / < dconf-settings-original-restore_21.04.ini && rm dconf-settings-original-restore_21.04.ini && rm dconf-settings-original-restore.sh
EOF
chmod -R a+rwx dconf-settings-original-restore.sh
EOF
cat << EOF > dconf-settings.sh
notify-send "Перезаидите в сессию что бы изменения вступили в силу | please restart session By Griggorii setting my donate https://money.yandex.ru/to/410014999913799 " 
EOF
chmod -R a+rwx dconf-settings.sh && ./dconf-settings.sh && rm dconf-settings.sh
EOF
cat << EOF > dconf-settings.ini
[apps/gecko-mediaplayer/preferences]
disable-midi=false

[apps/indicator-session]
show-real-name-on-panel=true
suppress-logout-menuitem=false
suppress-logout-restart-shutdown=false
suppress-restart-menuitem=false
suppress-shutdown-menuitem=false

[apps/light-locker]
idle-hint=false
late-locking=false
lock-after-screensaver=uint32 5
lock-on-lid=false
lock-on-suspend=false

[apps/mugshot]
email='Griggorii@gmail.com'
fax=''
initials='X64'

[apps/seahorse/listing]
item-filter='personal'
keyrings-selected=['pkcs11:model=p11-kit-trust;manufacturer=PKCS%2311%20Kit;serial=1;token=System%20Trust']

[apps/seahorse/windows/key-manager]
height=476
width=600

[apps/update-manager]
first-run=false
launch-count=10
launch-time=int64 1612852785
show-details=true
window-height=452
window-width=645

[ca/desrt/dconf-editor]
saved-pathbar-path='/org/gnome/desktop/lockdown/'
saved-view='/org/gnome/desktop/lockdown/'
show-warning=false
window-height=471
window-is-fullscreen=false
window-is-maximized=false
window-width=851

[com/canonical/indicator/appmenu/hud]
store-usage-data=false

[com/canonical/indicator/datetime]
locations=['UTC UTC']
show-auto-detected-location=true
show-date=true
show-day=true
show-locations=true
show-seconds=true
show-week-numbers=true
show-year=true

[com/canonical/indicator/keyboard]
migrated=true

[com/canonical/indicator/messages]
applications=['org.gnome.Calendar.desktop', 'thunderbird.desktop']

[com/canonical/indicator/power]
icon-policy='charge'
show-percentage=true
show-time=true

[com/canonical/indicator/sound]
interested-media-players=['org.gnome.Totem.desktop', 'vlc.desktop', 'rhythmbox.desktop', 'io.github.GnomeMpv.desktop']
preferred-media-players=['io.github.gnomempv.desktop']

[com/canonical/unity]
always-show-menus=true
lowgfx=false
minimize-count=2

[com/canonical/unity/interface]
text-scale-factor=1.0

[com/canonical/unity/launcher]
favorites=['application://ubiquity.desktop', 'application://org.gnome.Nautilus.desktop', 'application://firefox.desktop', 'application://org.gnome.Software.desktop', 'application://unity-control-center.desktop', 'unity://running-apps', 'application://obs.desktop', 'application://com.gexperts.Tilix.desktop', 'application://libreoffice-startcenter.desktop', 'application://gnome-system-monitor.desktop', 'application://nemo.desktop', 'unity://expo-icon', 'unity://devices']
launcher-position='Left'

[com/canonical/unity/lenses]
disabled-scopes=['web-chromiumbookmarks.scope', 'photos-facebook.scope', 'photos-picasa.scope', 'photos-flickr.scope', 'web-firefoxbookmarks.scope', 'code-devhelp.scope', 'music-rhythmbox.scope', 'photos-shotwell.scope', 'notes-tomboy.scope', 'music-banshee.scope', 'reference-zotero.scope', 'help-yelp.scope']
remote-content-search='none'

[com/canonical/unity/runner]
history=['budgie-panel']

[com/canonical/unity/settings-daemon/peripherals/keyboard]
numlock-state='off'

[com/canonical/unity/settings-daemon/plugins/media-keys]
on-screen-keyboard='<Primary>k'

[com/canonical/unity/webapps]
integration-allowed=false
preauthorized-domains=@as []

[com/gexperts/Tilix]
background-image='/usr/share/backgrounds/matt-mcnulty-nyc-2nd-ave.jpg'
background-image-mode='stretch'
control-scroll-zoom=true
enable-wide-handle=false
focus-follow-mouse=true
prompt-on-close=true
prompt-on-delete-profile=true
quake-specific-monitor=0
sidebar-on-right=true
theme-variant='system'
warn-vte-config-issue=false
window-style='normal'

[com/gexperts/Tilix/profiles]
default='0a1407fe-7c1d-4fe6-98e6-f9863431f084'
list=['2b7c4080-0ddd-46c5-8f23-563fd3ba789d', '0a1407fe-7c1d-4fe6-98e6-f9863431f084', 'c2f53d1c-a3d6-4098-8c59-cd4bbbb6ace3', 'bf9a5e07-866e-4922-9a06-e72991ae65a8', 'c7f52fa9-1a85-4a45-b07e-0e765fb6c358', 'd984ae7f-3048-478f-afdf-b13768f02875', 'c2f53d1c-a3d6-4098-8c59-cd4bbbb6ace4', '0a1407fe-7c1d-4fe6-98e6-f9863431f085']

[com/gexperts/Tilix/profiles/0a1407fe-7c1d-4fe6-98e6-f9863431f084]
background-color='#33302F'
background-transparency-percent=0
badge-color='#AC7EA8'
badge-color-set=false
bold-color='#0000A5A5FFFF'
bold-color-set=false
bold-is-bright=false
cursor-background-color='#8C3FBF'
cursor-colors-set=false
cursor-foreground-color='#FFFFFF'
dim-transparency-percent=0
font='Monospace Bold 12'
foreground-color='#3A3A88883939'
highlight-background-color='#CCCC00000000'
highlight-colors-set=false
highlight-foreground-color='#000046466C6C'
palette=['#040450503C3C', '#CC0000', '#009600', '#D06B00', '#0000CC', '#0578B4', '#D66D06', '#CCCCCC', '#808080', '#CC0000', '#009600', '#D06B00', '#0000CC', '#F57900', '#0087CC', '#FFFFFF']
use-system-font=false
use-theme-colors=false
visible-name='By Griggorii'

[com/gexperts/Tilix/profiles/0a1407fe-7c1d-4fe6-98e6-f9863431f085]
background-color='#393634'
background-transparency-percent=0
badge-color='#AC7EA8'
badge-color-set=false
bold-color='#0000A5A5FFFF'
bold-color-set=false
bold-is-bright=false
cursor-background-color='#8C3FBF'
cursor-colors-set=true
cursor-foreground-color='#FFFFFF'
dim-transparency-percent=0
font='Monospace Bold 12'
foreground-color='#C1C17D7D1111'
highlight-background-color='#CCCC00000000'
highlight-colors-set=false
highlight-foreground-color='#000046466C6C'
palette=['#2E3436', '#CC0403', '#19CB00', '#CECB00', '#000027275B5B', '#CB1ED1', '#0DCDCD', '#E5E5E5', '#4D4D4D', '#CC0000', '#23FD00', '#FFFD00', '#F57900', '#FD28FF', '#14FFFF', '#FFFFFF']
use-system-font=false
use-theme-colors=false
visible-name='By Griggorii 7'

[com/gexperts/Tilix/profiles/2b7c4080-0ddd-46c5-8f23-563fd3ba789d]
background-color='#1E1E1E'
background-transparency-percent=76
badge-color-set=false
bold-color-set=false
cursor-background-color='#C1C17D7D1111'
cursor-colors-set=true
cursor-foreground-color='#757550507B7B'
dim-transparency-percent=0
font='Monospace Bold 12'
foreground-color='#A7A7A7'
highlight-background-color='#CCCC00000000'
highlight-colors-set=true
highlight-foreground-color='#7373D2D21616'
palette=['#2E3436', '#CC0000', '#4E9A06', '#C4A000', '#3465A4', '#75507B', '#06979A', '#D3D7CF', '#555753', '#EF2929', '#8AE234', '#FCE94F', '#729FCF', '#AD7FA8', '#34E2E2', '#EEEEEC']
use-system-font=false
use-theme-colors=true
visible-name='По умолчанию'

[com/gexperts/Tilix/profiles/7348b39f-b0f1-4a07-8cf3-ecf7fc4398d4]
allow-bold=true
automatic-switch=@as []
background-color='#393634'
background-transparency-percent=58
backspace-binding='ascii-delete'
badge-color='#AC7EA8'
badge-color-set=false
badge-font='Monospace 12'
badge-position='northeast'
badge-text=''
badge-use-system-font=true
bold-color='#0000A5A5FFFF'
bold-color-set=false
bold-is-bright=true
cell-height-scale=1.0
cell-width-scale=1.0
cjk-utf8-ambiguous-width='narrow'
cursor-background-color='#8C3FBF'
cursor-blink-mode='system'
cursor-colors-set=true
cursor-foreground-color='#FFFFFF'
cursor-shape='block'
custom-command=''
custom-hyperlinks=@as []
default-size-columns=80
default-size-rows=24
delete-binding='delete-sequence'
dim-transparency-percent=0
draw-margin=80
encoding='UTF-8'
exit-action='close'
font='Monospace Bold 12'
foreground-color='#C1C17D7D1111'
highlight-background-color='#CCCC00000000'
highlight-colors-set=false
highlight-foreground-color='#000046466C6C'
login-shell=false
notify-silence-enabled=false
notify-silence-threshold=0
palette=['#2E3436', '#CC0403', '#19CB00', '#CECB00', '#000027275B5B', '#CB1ED1', '#0DCDCD', '#E5E5E5', '#4D4D4D', '#CC0000', '#23FD00', '#FFFD00', '#F57900', '#FD28FF', '#14FFFF', '#FFFFFF']
rewrap-on-resize=true
scroll-on-keystroke=true
scroll-on-output=false
scrollback-lines=8192
scrollback-unlimited=false
select-by-word-chars='-,./?%&#:_'
shortcut='disabled'
show-scrollbar=true
terminal-bell='sound'
terminal-title=': '
text-blink-mode='always'
triggers=@as []
use-custom-command=false
use-system-font=false
use-theme-colors=false
visible-name='By Griggorii 3'

[com/gexperts/Tilix/profiles/9af45e22-72fc-4f6f-a128-8c69e3da4d88]
visible-name='By Griggorii 3'

[com/gexperts/Tilix/profiles/bf9a5e07-866e-4922-9a06-e72991ae65a8]
allow-bold=true
automatic-switch=@as []
background-color='#FFFFFFFFFFFF'
background-transparency-percent=100
backspace-binding='ascii-delete'
badge-color='#AC7EA8'
badge-color-set=false
badge-font='Monospace 12'
badge-position='northeast'
badge-text=''
badge-use-system-font=true
bold-color='#0000A5A5FFFF'
bold-color-set=false
bold-is-bright=true
cell-height-scale=1.0
cell-width-scale=1.0
cjk-utf8-ambiguous-width='narrow'
cursor-background-color='#8C3FBF'
cursor-blink-mode='system'
cursor-colors-set=false
cursor-foreground-color='#FFFFFF'
cursor-shape='block'
custom-command=''
custom-hyperlinks=@as []
default-size-columns=80
default-size-rows=24
delete-binding='delete-sequence'
dim-transparency-percent=0
draw-margin=80
encoding='UTF-8'
exit-action='close'
font='Monospace Bold 12'
foreground-color='#040450503C3C'
highlight-background-color='#CCCC00000000'
highlight-colors-set=false
highlight-foreground-color='#000046466C6C'
login-shell=false
notify-silence-enabled=false
notify-silence-threshold=0
palette=['#040450503C3C', '#CC0000', '#009600', '#D06B00', '#0000CC', '#CC00CC', '#0087CC', '#CCCCCC', '#808080', '#CC0000', '#009600', '#D06B00', '#0000CC', '#F5F579790000', '#0087CC', '#FFFFFF']
rewrap-on-resize=true
scroll-on-keystroke=true
scroll-on-output=false
scrollback-lines=8192
scrollback-unlimited=false
select-by-word-chars='-,./?%&#:_'
shortcut='disabled'
show-scrollbar=true
terminal-bell='sound'
terminal-title=': '
text-blink-mode='always'
triggers=@as []
use-custom-command=false
use-system-font=false
use-theme-colors=false
visible-name='By Griggorii 3'

[com/gexperts/Tilix/profiles/c2f53d1c-a3d6-4098-8c59-cd4bbbb6ace3]
allow-bold=true
automatic-switch=@as []
background-color='#393634'
background-transparency-percent=58
backspace-binding='ascii-delete'
badge-color='#AC7EA8'
badge-color-set=false
badge-font='Monospace 12'
badge-position='northeast'
badge-text=''
badge-use-system-font=true
bold-color='#0000A5A5FFFF'
bold-color-set=false
bold-is-bright=false
cell-height-scale=1.0
cell-width-scale=1.0
cjk-utf8-ambiguous-width='narrow'
cursor-background-color='#8C3FBF'
cursor-blink-mode='system'
cursor-colors-set=true
cursor-foreground-color='#FFFFFF'
cursor-shape='block'
custom-command=''
custom-hyperlinks=@as []
default-size-columns=80
default-size-rows=24
delete-binding='delete-sequence'
dim-transparency-percent=0
draw-margin=80
encoding='UTF-8'
exit-action='close'
font='Monospace Bold 12'
foreground-color='#C1C17D7D1111'
highlight-background-color='#CCCC00000000'
highlight-colors-set=false
highlight-foreground-color='#000046466C6C'
login-shell=false
notify-silence-enabled=false
notify-silence-threshold=0
palette=['#2E3436', '#CC0403', '#19CB00', '#CECB00', '#000027275B5B', '#CB1ED1', '#0DCDCD', '#E5E5E5', '#4D4D4D', '#CC0000', '#23FD00', '#FFFD00', '#F57900', '#FD28FF', '#14FFFF', '#FFFFFF']
rewrap-on-resize=true
scroll-on-keystroke=true
scroll-on-output=false
scrollback-lines=8192
scrollback-unlimited=false
select-by-word-chars='-,./?%&#:_'
shortcut='disabled'
show-scrollbar=true
terminal-bell='sound'
terminal-title=': '
text-blink-mode='always'
triggers=@as []
use-custom-command=false
use-system-font=false
use-theme-colors=false
visible-name='By Griggorii 2'

[com/gexperts/Tilix/profiles/c2f53d1c-a3d6-4098-8c59-cd4bbbb6ace4]
allow-bold=true
automatic-switch=@as []
background-color='#393634'
background-transparency-percent=58
backspace-binding='ascii-delete'
badge-color='#AC7EA8'
badge-color-set=false
badge-font='Monospace 12'
badge-position='northeast'
badge-text=''
badge-use-system-font=true
bold-color='#0000A5A5FFFF'
bold-color-set=false
bold-is-bright=true
cell-height-scale=1.0
cell-width-scale=1.0
cjk-utf8-ambiguous-width='narrow'
cursor-background-color='#8C3FBF'
cursor-blink-mode='system'
cursor-colors-set=true
cursor-foreground-color='#FFFFFF'
cursor-shape='block'
custom-command=''
custom-hyperlinks=@as []
default-size-columns=80
default-size-rows=24
delete-binding='delete-sequence'
dim-transparency-percent=0
draw-margin=80
encoding='UTF-8'
exit-action='close'
font='Monospace Bold 12'
foreground-color='#C1C17D7D1111'
highlight-background-color='#CCCC00000000'
highlight-colors-set=false
highlight-foreground-color='#000046466C6C'
login-shell=false
notify-silence-enabled=false
notify-silence-threshold=0
palette=['#2E3436', '#CC0403', '#19CB00', '#CECB00', '#000027275B5B', '#CB1ED1', '#0DCDCD', '#E5E5E5', '#4D4D4D', '#CC0000', '#23FD00', '#FFFD00', '#F57900', '#FD28FF', '#14FFFF', '#FFFFFF']
rewrap-on-resize=true
scroll-on-keystroke=true
scroll-on-output=false
scrollback-lines=8192
scrollback-unlimited=false
select-by-word-chars='-,./?%&#:_'
shortcut='disabled'
show-scrollbar=true
terminal-bell='sound'
terminal-title=': '
text-blink-mode='always'
triggers=@as []
use-custom-command=false
use-system-font=false
use-theme-colors=false
visible-name='By Griggorii 6'

[com/gexperts/Tilix/profiles/c7f52fa9-1a85-4a45-b07e-0e765fb6c358]
allow-bold=true
automatic-switch=@as []
background-color='#020236363D3D'
background-transparency-percent=100
backspace-binding='ascii-delete'
badge-color='#AC7EA8'
badge-color-set=false
badge-font='Monospace 12'
badge-position='northeast'
badge-text=''
badge-use-system-font=true
bold-color='#0000A5A5FFFF'
bold-color-set=false
bold-is-bright=true
cell-height-scale=1.0
cell-width-scale=1.0
cjk-utf8-ambiguous-width='narrow'
cursor-background-color='#8C3FBF'
cursor-blink-mode='system'
cursor-colors-set=false
cursor-foreground-color='#FFFFFF'
cursor-shape='block'
custom-command=''
custom-hyperlinks=@as []
default-size-columns=80
default-size-rows=24
delete-binding='delete-sequence'
dim-transparency-percent=0
draw-margin=80
encoding='UTF-8'
exit-action='close'
font='Monospace Bold 12'
foreground-color='#09094A4A3939'
highlight-background-color='#CCCC00000000'
highlight-colors-set=false
highlight-foreground-color='#000046466C6C'
login-shell=false
notify-silence-enabled=false
notify-silence-threshold=0
palette=['#09094A4A3939', '#CC0000', '#009600', '#D06B00', '#0000CC', '#CC00CC', '#0087CC', '#CCCCCC', '#808080', '#CC0000', '#009600', '#D06B00', '#0000CC', '#F5F579790000', '#0087CC', '#FFFFFF']
rewrap-on-resize=true
scroll-on-keystroke=true
scroll-on-output=false
scrollback-lines=8192
scrollback-unlimited=false
select-by-word-chars='-,./?%&#:_'
shortcut='disabled'
show-scrollbar=true
terminal-bell='sound'
terminal-title=': '
text-blink-mode='always'
triggers=@as []
use-custom-command=false
use-system-font=false
use-theme-colors=false
visible-name='By Griggorii 4'

[com/gexperts/Tilix/profiles/d984ae7f-3048-478f-afdf-b13768f02875]
allow-bold=true
automatic-switch=@as []
background-color='#DFDBC3'
background-transparency-percent=100
backspace-binding='ascii-delete'
badge-color='#AC7EA8'
badge-color-set=false
badge-font='Monospace 12'
badge-position='northeast'
badge-text=''
badge-use-system-font=true
bold-color='#0000A5A5FFFF'
bold-color-set=false
bold-is-bright=true
cell-height-scale=1.0
cell-width-scale=1.0
cjk-utf8-ambiguous-width='narrow'
cursor-background-color='#8C3FBF'
cursor-blink-mode='system'
cursor-colors-set=false
cursor-foreground-color='#FFFFFF'
cursor-shape='block'
custom-command=''
custom-hyperlinks=@as []
default-size-columns=80
default-size-rows=24
delete-binding='delete-sequence'
dim-transparency-percent=0
draw-margin=80
encoding='UTF-8'
exit-action='close'
font='Monospace Bold 12'
foreground-color='#040450503C3C'
highlight-background-color='#CCCC00000000'
highlight-colors-set=false
highlight-foreground-color='#000046466C6C'
login-shell=false
notify-silence-enabled=false
notify-silence-threshold=0
palette=['#040450503C3C', '#CC0000', '#009600', '#D06B00', '#0000CC', '#CC00CC', '#0087CC', '#CCCCCC', '#808080', '#CC0000', '#009600', '#D06B00', '#0000CC', '#F5F579790000', '#0087CC', '#FFFFFF']
rewrap-on-resize=true
scroll-on-keystroke=true
scroll-on-output=false
scrollback-lines=8192
scrollback-unlimited=false
select-by-word-chars='-,./?%&#:_'
shortcut='disabled'
show-scrollbar=true
terminal-bell='sound'
terminal-title=': '
text-blink-mode='always'
triggers=@as []
use-custom-command=false
use-system-font=false
use-theme-colors=false
visible-name='By Griggorii 5'

[com/github/maoschanz/drawing]
last-active-tool='select'
last-left-rgba=['0.6431372549019608', '0.0', '0.0', '1.0']
last-right-rgba=['1.0', '1.0', '0.0', '0.5']
last-size=5
maximized=true

[com/github/wwmm/pulseeffects]
custom-source='alsa_input.pci-0000_00_1b.0.analog-stereo'
last-used-preset='Akai HD-230'
use-dark-theme=false
use-default-sink=true
use-default-source=true
window-height=618
window-width=1156

[com/github/wwmm/pulseeffects/sinkinputs]
plugins=['limiter', 'autogain', 'gate', 'multiband_gate', 'compressor', 'multiband_compressor', 'convolver', 'bass_enhancer', 'exciter', 'crystalizer', 'stereo_tools', 'reverb', 'equalizer', 'deesser', 'crossfeed', 'loudness', 'maximizer', 'filter', 'delay', 'pitch']

[com/github/wwmm/pulseeffects/sinkinputs/autogain]
detect-silence=true
input-gain=0.0
installed=true
output-gain=0.0
post-messages=true
reset=true
state=true
target=-19.0
use-geometric-mean=true

[com/github/wwmm/pulseeffects/sinkinputs/bassenhancer]
blend=0.0
floor=20.0
floor-active=true
harmonics=8.5
installed=true
post-messages=false
state=false

[com/github/wwmm/pulseeffects/sinkinputs/compressor]
installed=false
post-messages=false
ratio=2.0
release=250.0
state=false
threshold=-18.0

[com/github/wwmm/pulseeffects/sinkinputs/convolver]
installed=true
ir-width=100
post-messages=true
state=false

[com/github/wwmm/pulseeffects/sinkinputs/crossfeed]
installed=true
post-messages=false
state=false

[com/github/wwmm/pulseeffects/sinkinputs/crystalizer]
aggressive=false
installed=true
post-messages=true
state=true

[com/github/wwmm/pulseeffects/sinkinputs/deesser]
detection='RMS'
installed=true
mode='Wide'
post-messages=false
state=false

[com/github/wwmm/pulseeffects/sinkinputs/delay]
installed=false
post-messages=false
state=false

[com/github/wwmm/pulseeffects/sinkinputs/equalizer]
installed=false
post-messages=true
state=true

[com/github/wwmm/pulseeffects/sinkinputs/equalizer/leftchannel]
band6-gain=0.0

[com/github/wwmm/pulseeffects/sinkinputs/equalizer/rightchannel]
band0-frequency=22.59
band0-mode='RLC (BT)'
band0-q=4.3600000000000003
band0-slope='x1'
band0-type='Bell'
band1-frequency=28.440000000000001
band1-mode='RLC (BT)'
band1-q=4.3600000000000003
band1-slope='x1'
band1-type='Bell'
band10-frequency=225.88999999999999
band10-mode='RLC (BT)'
band10-q=4.3600000000000003
band10-slope='x1'
band10-type='Bell'
band11-frequency=284.38
band11-mode='RLC (BT)'
band11-q=4.3600000000000003
band11-slope='x1'
band11-type='Bell'
band12-frequency=358.01999999999998
band12-mode='RLC (BT)'
band12-q=4.3600000000000003
band12-slope='x1'
band12-type='Bell'
band13-frequency=450.72000000000003
band13-mode='RLC (BT)'
band13-q=4.3600000000000003
band13-slope='x1'
band13-type='Bell'
band14-frequency=567.41999999999996
band14-mode='RLC (BT)'
band14-q=4.3600000000000003
band14-slope='x1'
band14-type='Bell'
band15-frequency=714.34000000000003
band15-mode='RLC (BT)'
band15-q=4.3600000000000003
band15-slope='x1'
band15-type='Bell'
band16-frequency=899.28999999999996
band16-mode='RLC (BT)'
band16-q=4.3600000000000003
band16-slope='x1'
band16-type='Bell'
band17-frequency=1132.1500000000001
band17-mode='RLC (BT)'
band17-q=4.3600000000000003
band17-slope='x1'
band17-type='Bell'
band18-frequency=1425.29
band18-mode='RLC (BT)'
band18-q=4.3600000000000003
band18-slope='x1'
band18-type='Bell'
band19-frequency=1794.3299999999999
band19-mode='RLC (BT)'
band19-q=4.3600000000000003
band19-slope='x1'
band19-type='Bell'
band2-frequency=35.799999999999997
band2-mode='RLC (BT)'
band2-q=4.3600000000000003
band2-slope='x1'
band2-type='Bell'
band20-frequency=2258.9299999999998
band20-mode='RLC (BT)'
band20-q=4.3600000000000003
band20-slope='x1'
band20-type='Bell'
band21-frequency=2843.8200000000002
band21-mode='RLC (BT)'
band21-q=4.3600000000000003
band21-slope='x1'
band21-type='Bell'
band22-frequency=3580.1599999999999
band22-mode='RLC (BT)'
band22-q=4.3600000000000003
band22-slope='x1'
band22-type='Bell'
band23-frequency=4507.1499999999996
band23-mode='RLC (BT)'
band23-q=4.3600000000000003
band23-slope='x1'
band23-type='Bell'
band24-frequency=5674.1599999999999
band24-mode='RLC (BT)'
band24-q=4.3600000000000003
band24-slope='x1'
band24-type='Bell'
band25-frequency=7143.3500000000004
band25-mode='RLC (BT)'
band25-q=4.3600000000000003
band25-slope='x1'
band25-type='Bell'
band26-frequency=8992.9400000000005
band26-mode='RLC (BT)'
band26-q=4.3600000000000003
band26-slope='x1'
band26-type='Bell'
band27-frequency=11321.450000000001
band27-mode='RLC (BT)'
band27-q=4.3600000000000003
band27-slope='x1'
band27-type='Bell'
band28-frequency=14252.860000000001
band28-mode='RLC (BT)'
band28-q=4.3600000000000003
band28-slope='x1'
band28-type='Bell'
band29-frequency=17943.279999999999
band29-mode='RLC (BT)'
band29-q=4.3600000000000003
band29-slope='x1'
band29-type='Bell'
band3-frequency=45.07
band3-mode='RLC (BT)'
band3-q=4.3600000000000003
band3-slope='x1'
band3-type='Bell'
band4-frequency=56.740000000000002
band4-mode='RLC (BT)'
band4-q=4.3600000000000003
band4-slope='x1'
band4-type='Bell'
band5-frequency=71.430000000000007
band5-mode='RLC (BT)'
band5-q=4.3600000000000003
band5-slope='x1'
band5-type='Bell'
band6-frequency=89.930000000000007
band6-gain=0.0
band6-mode='RLC (BT)'
band6-q=4.3600000000000003
band6-slope='x1'
band6-type='Bell'
band7-frequency=113.20999999999999
band7-mode='RLC (BT)'
band7-q=4.3600000000000003
band7-slope='x1'
band7-type='Bell'
band8-frequency=142.53
band8-mode='RLC (BT)'
band8-q=4.3600000000000003
band8-slope='x1'
band8-type='Bell'
band9-frequency=179.43000000000001
band9-mode='RLC (BT)'
band9-q=4.3600000000000003
band9-slope='x1'
band9-type='Bell'

[com/github/wwmm/pulseeffects/sinkinputs/exciter]
harmonics=9.9999999999999947
installed=true
post-messages=false
scope=6937.0
state=false

[com/github/wwmm/pulseeffects/sinkinputs/filter]
frequency=305.81799999999998
inertia=74.0
installed=true
mode='6dB/oct Bandreject'
post-messages=false
resonance=0.70699999999999996
state=false

[com/github/wwmm/pulseeffects/sinkinputs/gate]
attack=20.0
installed=true
knee=9.0
makeup=0.0
post-messages=false
range=-24.0
ratio=1.0
release=250.0
state=false
stereo-link='Maximum'
threshold=-41.0

[com/github/wwmm/pulseeffects/sinkinputs/limiter]
installed=true
post-messages=false
state=false

[com/github/wwmm/pulseeffects/sinkinputs/loudness]
installed=true
link=-12.01
loudness=-1.9800000000000015
output=-3.7000000000000064
post-messages=true
state=true

[com/github/wwmm/pulseeffects/sinkinputs/maximizer]
installed=true
post-messages=false
release=3.1600000000000001
state=false

[com/github/wwmm/pulseeffects/sinkinputs/multibandcompressor]
bypass1=false
input-gain=0.0
installed=true
output-gain=0.0
post-messages=false
solo1=false
state=false

[com/github/wwmm/pulseeffects/sinkinputs/multibandgate]
installed=true
post-messages=false
state=false

[com/github/wwmm/pulseeffects/sinkinputs/pitch]
cents=0.0
faster=false
installed=true
post-messages=false
semitones=0
state=false

[com/github/wwmm/pulseeffects/sinkinputs/reverb]
amount=-8.0
bass-cut=300.0
decay-time=1.45397
diffusion=1.0
dry=6.0
hf-damp=9795.5799999999999
installed=true
post-messages=false
predelay=10.0
room-size='Tunnel-like'
state=false
treble-cut=5000.0

[com/github/wwmm/pulseeffects/sinkinputs/stereotools]
balance-in=7.5286998857393428e-16
input-gain=0.0
installed=true
mode='LR > LR (Stereo Default)'
mutel=false
muter=false
output-gain=0.0
phasel=false
phaser=false
post-messages=false
softclip=true
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/compressor]
installed=false
post-messages=false
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/deesser]
installed=true
post-messages=false
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/equalizer]
installed=false
post-messages=false
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/equalizer/rightchannel]
band0-frequency=22.59
band0-mode='RLC (BT)'
band0-q=4.3600000000000003
band0-slope='x1'
band0-type='Bell'
band1-frequency=28.440000000000001
band1-mode='RLC (BT)'
band1-q=4.3600000000000003
band1-slope='x1'
band1-type='Bell'
band10-frequency=225.88999999999999
band10-mode='RLC (BT)'
band10-q=4.3600000000000003
band10-slope='x1'
band10-type='Bell'
band11-frequency=284.38
band11-mode='RLC (BT)'
band11-q=4.3600000000000003
band11-slope='x1'
band11-type='Bell'
band12-frequency=358.01999999999998
band12-mode='RLC (BT)'
band12-q=4.3600000000000003
band12-slope='x1'
band12-type='Bell'
band13-frequency=450.72000000000003
band13-mode='RLC (BT)'
band13-q=4.3600000000000003
band13-slope='x1'
band13-type='Bell'
band14-frequency=567.41999999999996
band14-mode='RLC (BT)'
band14-q=4.3600000000000003
band14-slope='x1'
band14-type='Bell'
band15-frequency=714.34000000000003
band15-mode='RLC (BT)'
band15-q=4.3600000000000003
band15-slope='x1'
band15-type='Bell'
band16-frequency=899.28999999999996
band16-mode='RLC (BT)'
band16-q=4.3600000000000003
band16-slope='x1'
band16-type='Bell'
band17-frequency=1132.1500000000001
band17-mode='RLC (BT)'
band17-q=4.3600000000000003
band17-slope='x1'
band17-type='Bell'
band18-frequency=1425.29
band18-mode='RLC (BT)'
band18-q=4.3600000000000003
band18-slope='x1'
band18-type='Bell'
band19-frequency=1794.3299999999999
band19-mode='RLC (BT)'
band19-q=4.3600000000000003
band19-slope='x1'
band19-type='Bell'
band2-frequency=35.799999999999997
band2-mode='RLC (BT)'
band2-q=4.3600000000000003
band2-slope='x1'
band2-type='Bell'
band20-frequency=2258.9299999999998
band20-mode='RLC (BT)'
band20-q=4.3600000000000003
band20-slope='x1'
band20-type='Bell'
band21-frequency=2843.8200000000002
band21-mode='RLC (BT)'
band21-q=4.3600000000000003
band21-slope='x1'
band21-type='Bell'
band22-frequency=3580.1599999999999
band22-mode='RLC (BT)'
band22-q=4.3600000000000003
band22-slope='x1'
band22-type='Bell'
band23-frequency=4507.1499999999996
band23-mode='RLC (BT)'
band23-q=4.3600000000000003
band23-slope='x1'
band23-type='Bell'
band24-frequency=5674.1599999999999
band24-mode='RLC (BT)'
band24-q=4.3600000000000003
band24-slope='x1'
band24-type='Bell'
band25-frequency=7143.3500000000004
band25-mode='RLC (BT)'
band25-q=4.3600000000000003
band25-slope='x1'
band25-type='Bell'
band26-frequency=8992.9400000000005
band26-mode='RLC (BT)'
band26-q=4.3600000000000003
band26-slope='x1'
band26-type='Bell'
band27-frequency=11321.450000000001
band27-mode='RLC (BT)'
band27-q=4.3600000000000003
band27-slope='x1'
band27-type='Bell'
band28-frequency=14252.860000000001
band28-mode='RLC (BT)'
band28-q=4.3600000000000003
band28-slope='x1'
band28-type='Bell'
band29-frequency=17943.279999999999
band29-mode='RLC (BT)'
band29-q=4.3600000000000003
band29-slope='x1'
band29-type='Bell'
band3-frequency=45.07
band3-mode='RLC (BT)'
band3-q=4.3600000000000003
band3-slope='x1'
band3-type='Bell'
band4-frequency=56.740000000000002
band4-mode='RLC (BT)'
band4-q=4.3600000000000003
band4-slope='x1'
band4-type='Bell'
band5-frequency=71.430000000000007
band5-mode='RLC (BT)'
band5-q=4.3600000000000003
band5-slope='x1'
band5-type='Bell'
band6-frequency=89.930000000000007
band6-mode='RLC (BT)'
band6-q=4.3600000000000003
band6-slope='x1'
band6-type='Bell'
band7-frequency=113.20999999999999
band7-mode='RLC (BT)'
band7-q=4.3600000000000003
band7-slope='x1'
band7-type='Bell'
band8-frequency=142.53
band8-mode='RLC (BT)'
band8-q=4.3600000000000003
band8-slope='x1'
band8-type='Bell'
band9-frequency=179.43000000000001
band9-mode='RLC (BT)'
band9-q=4.3600000000000003
band9-slope='x1'
band9-type='Bell'

[com/github/wwmm/pulseeffects/sourceoutputs/filter]
installed=true
post-messages=false
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/gate]
installed=true
post-messages=false
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/limiter]
installed=true
post-messages=false
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/maximizer]
installed=true
post-messages=false
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/multibandcompressor]
installed=true
post-messages=false
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/multibandgate]
installed=true
post-messages=false
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/pitch]
installed=true
post-messages=false
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/reverb]
installed=true
post-messages=false
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/stereotools]
installed=true
post-messages=false
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/webrtc]
installed=true
post-messages=false
state=false

[com/github/wwmm/pulseeffects/spectrum]
color=[0.15698888888888884, 0.66333333333333333, 0.33171338028169001, 1.0]
fill=true
gradient-color=[0.0, 0.0, 0.0, 1.0]
height=112
n-points=81
sampling-freq=10
scale=1.0
use-custom-color=true

[com/solus-project/budgie-panel]
builtin-theme=true
dark-theme=false
migration-level=1
notification-position='BUDGIE_NOTIFICATION_POSITION_TOP_RIGHT'
panels=['a35a8564-dabb-11e9-b23b-0b98712e6d7b']

[com/solus-project/budgie-panel/applets/{0109a34c-9a89-11ea-bc5d-ab03568c6035}]
alignment='end'
name='BrightnessController'
position=1

[com/solus-project/budgie-panel/applets/{01fa7f65-0944-11ea-9873-cd0a3e495e06}]
alignment='start'
name='Budgie Menu'
position=0

[com/solus-project/budgie-panel/applets/{01fa7f66-0944-11ea-9873-cd0a3e495e06}]
alignment='start'
name='Spacer'
position=1

[com/solus-project/budgie-panel/applets/{01fa7f67-0944-11ea-9873-cd0a3e495e06}]
alignment='start'
name='ShowTime'
position=2

[com/solus-project/budgie-panel/applets/{01fa7f68-0944-11ea-9873-cd0a3e495e06}]
alignment='center'
name='Clock'
position=0

[com/solus-project/budgie-panel/applets/{01fa7f69-0944-11ea-9873-cd0a3e495e06}]
alignment='end'
name='AppIndicator Applet'
position=0

[com/solus-project/budgie-panel/applets/{01fa7f6a-0944-11ea-9873-cd0a3e495e06}]
alignment='end'
name='System Tray'
position=1

[com/solus-project/budgie-panel/applets/{01fa7f6b-0944-11ea-9873-cd0a3e495e06}]
alignment='end'
name='Caffeine'
position=2

[com/solus-project/budgie-panel/applets/{01fa7f6c-0944-11ea-9873-cd0a3e495e06}]
alignment='end'
name='QuickNote'
position=3

[com/solus-project/budgie-panel/applets/{01fa7f6d-0944-11ea-9873-cd0a3e495e06}]
alignment='end'
name='Spacer'
position=4

[com/solus-project/budgie-panel/applets/{01fa7f6e-0944-11ea-9873-cd0a3e495e06}]
alignment='end'
name='Night Light'
position=5

[com/solus-project/budgie-panel/applets/{01fa7f6f-0944-11ea-9873-cd0a3e495e06}]
alignment='end'
name='Places'
position=6

[com/solus-project/budgie-panel/applets/{01fa7f70-0944-11ea-9873-cd0a3e495e06}]
alignment='end'
name='Notifications'
position=7

[com/solus-project/budgie-panel/applets/{01fa7f71-0944-11ea-9873-cd0a3e495e06}]
alignment='end'
name='Status Indicator'
position=8

[com/solus-project/budgie-panel/applets/{01fa7f72-0944-11ea-9873-cd0a3e495e06}]
alignment='end'
name='Separator'
position=9

[com/solus-project/budgie-panel/applets/{01fa7f73-0944-11ea-9873-cd0a3e495e06}]
alignment='end'
name='Spacer'
position=10

[com/solus-project/budgie-panel/applets/{01fa7f74-0944-11ea-9873-cd0a3e495e06}]
alignment='end'
name='User Indicator'
position=11

[com/solus-project/budgie-panel/applets/{01fa7f75-0944-11ea-9873-cd0a3e495e06}]
alignment='end'
name='Raven Trigger'
position=12

[com/solus-project/budgie-panel/applets/{0460566c-26c2-11e9-b617-525400320717}]
alignment='end'
name='User Indicator'
position=11

[com/solus-project/budgie-panel/applets/{0569d75a-1ece-11e9-90d7-525400320717}]
alignment='end'
name='Keyboard Layout'
position=12

[com/solus-project/budgie-panel/applets/{076d787e-b0db-11e8-88f2-f788eed09528}]
alignment='end'
name='Raven Trigger'
position=11

[com/solus-project/budgie-panel/applets/{07a8c642-dabd-11e9-b23b-0b98712e6d7b}]
alignment='end'
name='Spacer'
position=4

[com/solus-project/budgie-panel/applets/{08f3cabe-1ed0-11e9-90d7-525400320717}]
alignment='center'
name='Workspace Switcher'
position=1

[com/solus-project/budgie-panel/applets/{0af5a6e2-b0db-11e8-88f2-f788eed09528}]
alignment='end'
name='Clock'
position=10

[com/solus-project/budgie-panel/applets/{0bab372a-26c2-11e9-b617-525400320717}]
alignment='end'
name='Spacer'
position=10

[com/solus-project/budgie-panel/applets/{0e4a6c68-45df-11e8-916c-a92ff7772c4d}]
alignment='center'
position=1

[com/solus-project/budgie-panel/applets/{10292290-1ece-11e9-90d7-525400320717}]
alignment='end'
name='DropBy'
position=11

[com/solus-project/budgie-panel/applets/{1183ec96-26c2-11e9-b617-525400320717}]
alignment='end'
name='Separator'
position=9

[com/solus-project/budgie-panel/applets/{132d22d2-77a9-11e9-b2d4-2d94a7138723}]
alignment='end'
name='Clock'
position=11

[com/solus-project/budgie-panel/applets/{14c4af2e-b0db-11e8-88f2-f788eed09528}]
alignment='end'
name='User Indicator'
position=9

[com/solus-project/budgie-panel/applets/{14dd5db4-26c2-11e9-b617-525400320717}]
alignment='end'
name='Spacer'
position=8

[com/solus-project/budgie-panel/applets/{18f75e1c-1ed0-11e9-90d7-525400320717}]
alignment='center'
name='Places'
position=2

[com/solus-project/budgie-panel/applets/{1b2d812e-b0db-11e8-88f2-f788eed09528}]
alignment='end'
name='Spacer'
position=8

[com/solus-project/budgie-panel/applets/{1ed682ea-b436-11e8-9fed-3fa40103cb8b}]
alignment='end'
name='User Indicator'
position=10

[com/solus-project/budgie-panel/applets/{1ee926b2-26c2-11e9-b617-525400320717}]
alignment='end'
name='Notifications'
position=7

[com/solus-project/budgie-panel/applets/{1f3713a0-1ece-11e9-90d7-525400320717}]
alignment='end'
name='Status Indicator'
position=10

[com/solus-project/budgie-panel/applets/{20a53048-b0db-11e8-88f2-f788eed09528}]
alignment='end'
name='Keyboard Layout'
position=7

[com/solus-project/budgie-panel/applets/{24152416-763a-11e9-b441-9fea6856116e}]
alignment='start'
name='Budgie Menu'
position=0

[com/solus-project/budgie-panel/applets/{2667f1de-26c2-11e9-b617-525400320717}]
alignment='end'
name='Keyboard Layout'
position=6

[com/solus-project/budgie-panel/applets/{2704888a-b0db-11e8-88f2-f788eed09528}]
alignment='end'
name='Notifications'
position=5

[com/solus-project/budgie-panel/applets/{28a30152-b00a-11e8-a863-172bad3a3449}]
alignment='end'
name='Raven Trigger'
position=11

[com/solus-project/budgie-panel/applets/{2b66ff60-b00a-11e8-a863-172bad3a3449}]
alignment='end'
name='Clock'
position=10

[com/solus-project/budgie-panel/applets/{2bce2634-26c2-11e9-b617-525400320717}]
alignment='end'
name='DropBy'
position=5

[com/solus-project/budgie-panel/applets/{2c9cc9b8-763a-11e9-b441-9fea6856116e}]
alignment='start'
name='Icon Task List'
position=1

[com/solus-project/budgie-panel/applets/{2d65d7d8-b0db-11e8-88f2-f788eed09528}]
alignment='end'
name='Spacer'
position=6

[com/solus-project/budgie-panel/applets/{2d6cfe84-dabd-11e9-b23b-0b98712e6d7b}]
alignment='center'
name='Workspace Switcher'
position=2

[com/solus-project/budgie-panel/applets/{34892d16-b00a-11e8-a863-172bad3a3449}]
alignment='end'
name='User Indicator'
position=9

[com/solus-project/budgie-panel/applets/{39d27456-763b-11e9-b441-9fea6856116e}]
alignment='end'
name='RotationLock'
position=5

[com/solus-project/budgie-panel/applets/{39dc111e-26c2-11e9-b617-525400320717}]
alignment='end'
name='RotationLock'
position=4

[com/solus-project/budgie-panel/applets/{3dde8fe4-6197-11e8-96a0-e7f827d77ada}]
alignment='start'
name='Budgie Menu'
position=0

[com/solus-project/budgie-panel/applets/{3e8ee5be-b436-11e8-9fed-3fa40103cb8b}]
alignment='end'
name='Notifications'
position=5

[com/solus-project/budgie-panel/applets/{407b4134-26c2-11e9-b617-525400320717}]
alignment='end'
name='Night Light'
position=3

[com/solus-project/budgie-panel/applets/{408e9e5c-b00a-11e8-a863-172bad3a3449}]
alignment='end'
name='Separator'
position=7

[com/solus-project/budgie-panel/applets/{416748fa-763a-11e9-b441-9fea6856116e}]
alignment='start'
name='ShowTime'
position=2

[com/solus-project/budgie-panel/applets/{41a1f786-b0db-11e8-88f2-f788eed09528}]
alignment='end'
name='Budgie Brightness Control'
position=2

[com/solus-project/budgie-panel/applets/{432adf7a-6197-11e8-96a0-e7f827d77ada}]
alignment='start'
name='Icon Task List'
position=1

[com/solus-project/budgie-panel/applets/{43b339a0-b436-11e8-9fed-3fa40103cb8b}]
alignment='end'
name='Spacer'
position=6

[com/solus-project/budgie-panel/applets/{44bab28e-26c2-11e9-b617-525400320717}]
alignment='end'
name='Budgie Brightness Control'
position=2

[com/solus-project/budgie-panel/applets/{467df35c-1ece-11e9-90d7-525400320717}]
alignment='end'
name='System Tray'
position=1

[com/solus-project/budgie-panel/applets/{495b9bce-763a-11e9-b441-9fea6856116e}]
alignment='start'
name='WeatherShow'
position=3

[com/solus-project/budgie-panel/applets/{49cd0e88-b436-11e8-9fed-3fa40103cb8b}]
alignment='end'
name='AppIndicator Applet'
position=1

[com/solus-project/budgie-panel/applets/{49d0cd42-b0db-11e8-88f2-f788eed09528}]
alignment='end'
name='System Tray'
position=0

[com/solus-project/budgie-panel/applets/{4b3105d2-763b-11e9-b441-9fea6856116e}]
alignment='end'
name='Spacer'
position=4

[com/solus-project/budgie-panel/applets/{4e10f24e-26c2-11e9-b617-525400320717}]
alignment='end'
name='System Tray'
position=0

[com/solus-project/budgie-panel/applets/{4eded2f0-09dd-11ea-af56-cdd5f8c5d00f}]
alignment='center'
name='System Monitor'
position=0

[com/solus-project/budgie-panel/applets/{52f78b94-b00a-11e8-a863-172bad3a3449}]
alignment='end'
name='Notifications'
position=4

[com/solus-project/budgie-panel/applets/{53a32066-763a-11e9-b441-9fea6856116e}]
alignment='center'
name='System Monitor'
position=0

[com/solus-project/budgie-panel/applets/{55def71e-26c2-11e9-b617-525400320717}]
alignment='start'
name='ShowTime'
position=2

[com/solus-project/budgie-panel/applets/{56b4f896-763b-11e9-b441-9fea6856116e}]
alignment='end'
name='Budgie Brightness Control'
position=3

[com/solus-project/budgie-panel/applets/{5783414e-b00a-11e8-a863-172bad3a3449}]
alignment='end'
name='Spacer'
position=5

[com/solus-project/budgie-panel/applets/{57d3b878-b0db-11e8-88f2-f788eed09528}]
alignment='end'
name='AppIndicator Applet'
position=1

[com/solus-project/budgie-panel/applets/{5b21b33e-dabc-11e9-b23b-0b98712e6d7b}]
alignment='end'
name='Keyboard Layout'
position=9

[com/solus-project/budgie-panel/applets/{5cad6aae-763a-11e9-b441-9fea6856116e}]
alignment='center'
name='Places'
position=1

[com/solus-project/budgie-panel/applets/{5cf90046-b00a-11e8-a863-172bad3a3449}]
alignment='end'
name='AppIndicator Applet'
position=2

[com/solus-project/budgie-panel/applets/{5e59db2e-4636-11e8-837c-c944fbda294c}]
alignment='end'
position=14

[com/solus-project/budgie-panel/applets/{5e8f4fea-2225-11e9-bdb0-525400320717}]
alignment='end'
name='QuickNote'
position=0

[com/solus-project/budgie-panel/applets/{5ec7ca0e-26c2-11e9-b617-525400320717}]
alignment='start'
name='WeatherShow'
position=3

[com/solus-project/budgie-panel/applets/{5ecee8ca-763b-11e9-b441-9fea6856116e}]
alignment='end'
name='Spacer'
position=2

[com/solus-project/budgie-panel/applets/{630a883a-b436-11e8-9fed-3fa40103cb8b}]
alignment='end'
name='Status Indicator'
position=4

[com/solus-project/budgie-panel/applets/{66e227a2-763b-11e9-b441-9fea6856116e}]
alignment='end'
name='Status Indicator'
position=1

[com/solus-project/budgie-panel/applets/{67bba338-26c2-11e9-b617-525400320717}]
alignment='center'
name='System Monitor'
position=0

[com/solus-project/budgie-panel/applets/{680bc8d0-b436-11e8-9fed-3fa40103cb8b}]
alignment='end'
name='Budgie Brightness Control'
position=2

[com/solus-project/budgie-panel/applets/{6e7f88ce-26c2-11e9-b617-525400320717}]
alignment='center'
name='Places'
position=1

[com/solus-project/budgie-panel/applets/{70648dba-763b-11e9-b441-9fea6856116e}]
alignment='end'
name='System Tray'
position=0

[com/solus-project/budgie-panel/applets/{715e0d72-1ecf-11e9-90d7-525400320717}]
alignment='start'
name='WeatherShow'
position=3

[com/solus-project/budgie-panel/applets/{726d84fe-dabd-11e9-b23b-0b98712e6d7b}]
alignment='end'
name='RotationLock'
position=5

[com/solus-project/budgie-panel/applets/{73375ee0-b436-11e8-9fed-3fa40103cb8b}]
alignment='end'
name='Spacer'
position=3

[com/solus-project/budgie-panel/applets/{740a8e42-26c2-11e9-b617-525400320717}]
alignment='center'
name='Workspace Switcher'
position=2

[com/solus-project/budgie-panel/applets/{7440123a-dd31-11e9-bf9f-809b2033dc94}]
alignment='start'
name='WeatherShow'
position=4

[com/solus-project/budgie-panel/applets/{7556bc5e-763a-11e9-b441-9fea6856116e}]
alignment='center'
name='Workspace Switcher'
position=2

[com/solus-project/budgie-panel/applets/{7626d7b8-b5a6-11e8-9c0b-4fd83cf1c1b5}]
alignment='center'
name='System Monitor'
position=0

[com/solus-project/budgie-panel/applets/{79d3268c-1ece-11e9-90d7-525400320717}]
alignment='end'
name='Caffeine'
position=8

[com/solus-project/budgie-panel/applets/{7a2aca6c-dabd-11e9-b23b-0b98712e6d7b}]
alignment='end'
name='Budgie Brightness Control'
position=3

[com/solus-project/budgie-panel/applets/{7b974c64-b5a6-11e8-9c0b-4fd83cf1c1b5}]
alignment='center'
name='Workspace Switcher'
position=1

[com/solus-project/budgie-panel/applets/{7e0e882c-dabc-11e9-b23b-0b98712e6d7b}]
alignment='center'
name='System Monitor'
position=0

[com/solus-project/budgie-panel/applets/{807b023e-b5a6-11e8-9c0b-4fd83cf1c1b5}]
alignment='center'
name='Places'
position=2

[com/solus-project/budgie-panel/applets/{8438b5ec-763a-11e9-b441-9fea6856116e}]
alignment='end'
name='Raven Trigger'
position=17

[com/solus-project/budgie-panel/applets/{875f3904-9686-11ea-80a5-a97a61034774}]
alignment='end'
name='BrightnessController'
position=1

[com/solus-project/budgie-panel/applets/{87b34f98-1ece-11e9-90d7-525400320717}]
alignment='end'
name='Budgie Brightness Control'
position=6

[com/solus-project/budgie-panel/applets/{8a7e16f4-763a-11e9-b441-9fea6856116e}]
alignment='end'
name='Clock'
position=16

[com/solus-project/budgie-panel/applets/{8ac8f43e-72f4-11e8-94cb-67756189a5cb}]
alignment='end'
name='Night Light'
position=4

[com/solus-project/budgie-panel/applets/{8bff9f06-463a-11e8-8265-7d5ff59b157b}]
alignment='center'
position=0

[com/solus-project/budgie-panel/applets/{8ca79004-1ece-11e9-90d7-525400320717}]
alignment='end'
name='Night Light'
position=5

[com/solus-project/budgie-panel/applets/{9172da1c-95dd-11ea-9a54-33399d140dd8}]
alignment='center'
name='BrightnessController'
position=3

[com/solus-project/budgie-panel/applets/{91e22ba6-b5a6-11e8-9c0b-4fd83cf1c1b5}]
alignment='end'
name='Raven Trigger'
position=11

[com/solus-project/budgie-panel/applets/{9402ec40-763a-11e9-b441-9fea6856116e}]
alignment='end'
name='User Indicator'
position=15

[com/solus-project/budgie-panel/applets/{948590d2-1ece-11e9-90d7-525400320717}]
alignment='end'
name='Spacer'
position=9

[com/solus-project/budgie-panel/applets/{963b45d4-b5a6-11e8-9c0b-4fd83cf1c1b5}]
alignment='end'
name='Clock'
position=10

[com/solus-project/budgie-panel/applets/{97d30ef8-463a-11e8-8265-7d5ff59b157b}]
alignment='end'
position=1

[com/solus-project/budgie-panel/applets/{9c8d1602-b5a5-11e8-a0ad-9dd098ee626e}]
alignment='start'
name='Budgie Menu'
position=0

[com/solus-project/budgie-panel/applets/{9ccf9724-b5a6-11e8-9c0b-4fd83cf1c1b5}]
alignment='end'
name='User Indicator'
position=9

[com/solus-project/budgie-panel/applets/{9dee6d56-763a-11e9-b441-9fea6856116e}]
alignment='end'
name='Spacer'
position=14

[com/solus-project/budgie-panel/applets/{a2839b06-463a-11e8-8265-7d5ff59b157b}]
alignment='end'
position=2

[com/solus-project/budgie-panel/applets/{a2ae9924-b5a6-11e8-9c0b-4fd83cf1c1b5}]
alignment='end'
name='Spacer'
position=8

[com/solus-project/budgie-panel/applets/{a35a8565-dabb-11e9-b23b-0b98712e6d7b}]
alignment='start'
name='Budgie Menu'
position=0

[com/solus-project/budgie-panel/applets/{a35a8566-dabb-11e9-b23b-0b98712e6d7b}]
alignment='start'
name='Spacer'
position=1

[com/solus-project/budgie-panel/applets/{a35a8567-dabb-11e9-b23b-0b98712e6d7b}]
alignment='start'
name='ShowTime'
position=2

[com/solus-project/budgie-panel/applets/{a35a8568-dabb-11e9-b23b-0b98712e6d7b}]
alignment='end'
name='Clock'
position=14

[com/solus-project/budgie-panel/applets/{a35a8569-dabb-11e9-b23b-0b98712e6d7b}]
alignment='end'
name='AppIndicator Applet'
position=0

[com/solus-project/budgie-panel/applets/{a35a856a-dabb-11e9-b23b-0b98712e6d7b}]
alignment='end'
name='System Tray'
position=1

[com/solus-project/budgie-panel/applets/{a35a856d-dabb-11e9-b23b-0b98712e6d7b}]
alignment='end'
name='Spacer'
position=6

[com/solus-project/budgie-panel/applets/{a35a856e-dabb-11e9-b23b-0b98712e6d7b}]
alignment='end'
name='Night Light'
position=7

[com/solus-project/budgie-panel/applets/{a35a856f-dabb-11e9-b23b-0b98712e6d7b}]
alignment='center'
name='Places'
position=1

[com/solus-project/budgie-panel/applets/{a35a8570-dabb-11e9-b23b-0b98712e6d7b}]
alignment='end'
name='Notifications'
position=10

[com/solus-project/budgie-panel/applets/{a35a8571-dabb-11e9-b23b-0b98712e6d7b}]
alignment='end'
name='Status Indicator'
position=2

[com/solus-project/budgie-panel/applets/{a35a8572-dabb-11e9-b23b-0b98712e6d7b}]
alignment='end'
name='Separator'
position=12

[com/solus-project/budgie-panel/applets/{a35a8573-dabb-11e9-b23b-0b98712e6d7b}]
alignment='end'
name='Spacer'
position=11

[com/solus-project/budgie-panel/applets/{a35a8574-dabb-11e9-b23b-0b98712e6d7b}]
alignment='end'
name='User Indicator'
position=13

[com/solus-project/budgie-panel/applets/{a35a8575-dabb-11e9-b23b-0b98712e6d7b}]
alignment='end'
name='Raven Trigger'
position=15

[com/solus-project/budgie-panel/applets/{a5823f20-763a-11e9-b441-9fea6856116e}]
alignment='end'
name='Separator'
position=13

[com/solus-project/budgie-panel/applets/{a59f49ed-4393-11e8-a325-934928330824}]
position=0

[com/solus-project/budgie-panel/applets/{a62353d6-b044-11e8-8456-bf8a87eecc81}]
alignment='end'
name='Budgie Brightness Control'
position=1

[com/solus-project/budgie-panel/applets/{a87d0e22-b5a5-11e8-a0ad-9dd098ee626e}]
alignment='start'
name='Icon Task List'
position=1

[com/solus-project/budgie-panel/applets/{a9f75270-763a-11e9-b441-9fea6856116e}]
alignment='end'
name='Spacer'
position=12

[com/solus-project/budgie-panel/applets/{aa58c280-1ece-11e9-90d7-525400320717}]
alignment='end'
name='Spacer'
position=7

[com/solus-project/budgie-panel/applets/{aaa12222-6197-11e8-96a0-e7f827d77ada}]
alignment='start'
name='ShowTime'
position=2

[com/solus-project/budgie-panel/applets/{aafc1390-b5a6-11e8-9c0b-4fd83cf1c1b5}]
alignment='end'
name='Keyboard Layout'
position=7

[com/solus-project/budgie-panel/applets/{afe400e6-751b-11e8-b992-00163e000000}]
alignment='start'
name='Window Previews'
position=3

[com/solus-project/budgie-panel/applets/{b0170cb8-e5ca-11e9-8f26-f742aca3153e}]
alignment='start'
name='WeatherShow'
position=4

[com/solus-project/budgie-panel/applets/{b194ed7a-dabd-11e9-b23b-0b98712e6d7b}]
alignment='end'
name='DropBy'
position=8

[com/solus-project/budgie-panel/applets/{b24ee343-09de-11ea-af56-cdd5f8c5d00f}]
alignment='start'
name='Budgie Menu'
position=0

[com/solus-project/budgie-panel/applets/{b24ee344-09de-11ea-af56-cdd5f8c5d00f}]
alignment='start'
name='Spacer'
position=1

[com/solus-project/budgie-panel/applets/{b24ee345-09de-11ea-af56-cdd5f8c5d00f}]
alignment='start'
name='ShowTime'
position=2

[com/solus-project/budgie-panel/applets/{b24ee346-09de-11ea-af56-cdd5f8c5d00f}]
alignment='center'
name='Clock'
position=0

[com/solus-project/budgie-panel/applets/{b24ee347-09de-11ea-af56-cdd5f8c5d00f}]
alignment='end'
name='AppIndicator Applet'
position=0

[com/solus-project/budgie-panel/applets/{b24ee348-09de-11ea-af56-cdd5f8c5d00f}]
alignment='end'
name='System Tray'
position=1

[com/solus-project/budgie-panel/applets/{b24ee349-09de-11ea-af56-cdd5f8c5d00f}]
alignment='end'
name='Caffeine'
position=2

[com/solus-project/budgie-panel/applets/{b24ee34a-09de-11ea-af56-cdd5f8c5d00f}]
alignment='end'
name='QuickNote'
position=3

[com/solus-project/budgie-panel/applets/{b24ee34b-09de-11ea-af56-cdd5f8c5d00f}]
alignment='end'
name='Spacer'
position=4

[com/solus-project/budgie-panel/applets/{b24ee34c-09de-11ea-af56-cdd5f8c5d00f}]
alignment='end'
name='Night Light'
position=5

[com/solus-project/budgie-panel/applets/{b24ee34d-09de-11ea-af56-cdd5f8c5d00f}]
alignment='end'
name='Places'
position=6

[com/solus-project/budgie-panel/applets/{b24ee34e-09de-11ea-af56-cdd5f8c5d00f}]
alignment='end'
name='Notifications'
position=7

[com/solus-project/budgie-panel/applets/{b24ee34f-09de-11ea-af56-cdd5f8c5d00f}]
alignment='end'
name='Status Indicator'
position=8

[com/solus-project/budgie-panel/applets/{b24ee350-09de-11ea-af56-cdd5f8c5d00f}]
alignment='end'
name='Separator'
position=9

[com/solus-project/budgie-panel/applets/{b24ee351-09de-11ea-af56-cdd5f8c5d00f}]
alignment='end'
name='Spacer'
position=10

[com/solus-project/budgie-panel/applets/{b24ee352-09de-11ea-af56-cdd5f8c5d00f}]
alignment='end'
name='User Indicator'
position=11

[com/solus-project/budgie-panel/applets/{b24ee353-09de-11ea-af56-cdd5f8c5d00f}]
alignment='end'
name='Raven Trigger'
position=12

[com/solus-project/budgie-panel/applets/{b570b6b4-b5a6-11e8-9c0b-4fd83cf1c1b5}]
alignment='end'
name='Notifications'
position=5

[com/solus-project/budgie-panel/applets/{b6c2b22e-763a-11e9-b441-9fea6856116e}]
alignment='end'
name='Notifications'
position=11

[com/solus-project/budgie-panel/applets/{ba372c08-4393-11e8-a325-934928330824}]
position=3

[com/solus-project/budgie-panel/applets/{ba372c09-4393-11e8-a325-934928330824}]
position=0

[com/solus-project/budgie-panel/applets/{ba372c0a-4393-11e8-a325-934928330824}]
alignment='end'
position=13

[com/solus-project/budgie-panel/applets/{ba372c0b-4393-11e8-a325-934928330824}]
alignment='end'
position=0

[com/solus-project/budgie-panel/applets/{ba372c0c-4393-11e8-a325-934928330824}]
alignment='end'
position=3

[com/solus-project/budgie-panel/applets/{ba372c0d-4393-11e8-a325-934928330824}]
alignment='end'
position=5

[com/solus-project/budgie-panel/applets/{ba7190b0-b435-11e8-9fed-3fa40103cb8b}]
alignment='start'
name='Budgie Menu'
position=0

[com/solus-project/budgie-panel/applets/{bc0418cc-b5a6-11e8-9c0b-4fd83cf1c1b5}]
alignment='end'
name='Spacer'
position=6

[com/solus-project/budgie-panel/applets/{bc239a60-4393-11e8-a325-934928330824}]
alignment='end'
position=6

[com/solus-project/budgie-panel/applets/{bc239a61-4393-11e8-a325-934928330824}]
position=2

[com/solus-project/budgie-panel/applets/{bc239a62-4393-11e8-a325-934928330824}]
alignment='end'
position=4

[com/solus-project/budgie-panel/applets/{bc239a63-4393-11e8-a325-934928330824}]
alignment='center'
position=2

[com/solus-project/budgie-panel/applets/{bc239a64-4393-11e8-a325-934928330824}]
alignment='end'
position=8

[com/solus-project/budgie-panel/applets/{bc239a65-4393-11e8-a325-934928330824}]
alignment='end'
position=7

[com/solus-project/budgie-panel/applets/{bc239a66-4393-11e8-a325-934928330824}]
alignment='end'
position=10

[com/solus-project/budgie-panel/applets/{bc239a67-4393-11e8-a325-934928330824}]
alignment='end'
position=11

[com/solus-project/budgie-panel/applets/{bc239a68-4393-11e8-a325-934928330824}]
alignment='end'
position=12

[com/solus-project/budgie-panel/applets/{bcb411e4-b0da-11e8-88f2-f788eed09528}]
alignment='start'
name='Budgie Menu'
position=0

[com/solus-project/budgie-panel/applets/{bde3b882-763a-11e9-b441-9fea6856116e}]
alignment='end'
name='Spacer'
position=10

[com/solus-project/budgie-panel/applets/{be3aa00c-1ece-11e9-90d7-525400320717}]
alignment='end'
name='Spacer'
position=4

[com/solus-project/budgie-panel/applets/{c10c7b24-6197-11e8-96a0-e7f827d77ada}]
alignment='center'
name='Places'
position=2

[com/solus-project/budgie-panel/applets/{c198a21c-b5a6-11e8-9c0b-4fd83cf1c1b5}]
alignment='end'
name='AppIndicator Applet'
position=3

[com/solus-project/budgie-panel/applets/{c37e772c-dabd-11e9-b23b-0b98712e6d7b}]
alignment='start'
name='WeatherShow'
position=4

[com/solus-project/budgie-panel/applets/{c4d4fa98-763a-11e9-b441-9fea6856116e}]
alignment='end'
name='Keyboard Layout'
position=9

[com/solus-project/budgie-panel/applets/{c59bc052-1ecd-11e9-90d7-525400320717}]
alignment='end'
name='Raven Trigger'
position=19

[com/solus-project/budgie-panel/applets/{c76a62b2-95c8-11ea-9f05-25964637bc33}]
alignment='center'
name='BrightnessController'
position=3

[com/solus-project/budgie-panel/applets/{c9253374-b5a6-11e8-9c0b-4fd83cf1c1b5}]
alignment='end'
name='System Tray'
position=0

[com/solus-project/budgie-panel/applets/{ca1703f8-1ecd-11e9-90d7-525400320717}]
alignment='end'
name='Clock'
position=18

[com/solus-project/budgie-panel/applets/{cde19cc2-763a-11e9-b441-9fea6856116e}]
alignment='end'
name='Spacer'
position=8

[com/solus-project/budgie-panel/applets/{cfb5deb0-1ecd-11e9-90d7-525400320717}]
alignment='end'
name='User Indicator'
position=17

[com/solus-project/budgie-panel/applets/{d334e756-b5a6-11e8-9c0b-4fd83cf1c1b5}]
alignment='end'
name='Status Indicator'
position=4

[com/solus-project/budgie-panel/applets/{d644f644-1ecd-11e9-90d7-525400320717}]
alignment='end'
name='Spacer'
position=16

[com/solus-project/budgie-panel/applets/{d8a57c96-b5a6-11e8-9c0b-4fd83cf1c1b5}]
alignment='end'
name='Budgie Brightness Control'
position=2

[com/solus-project/budgie-panel/applets/{dbe864fe-26c1-11e9-b617-525400320717}]
alignment='start'
name='Budgie Menu'
position=0

[com/solus-project/budgie-panel/applets/{dc7590dc-1ecd-11e9-90d7-525400320717}]
alignment='end'
name='Separator'
position=15

[com/solus-project/budgie-panel/applets/{e1611d4a-b5a6-11e8-9c0b-4fd83cf1c1b5}]
alignment='end'
name='Spacer'
position=1

[com/solus-project/budgie-panel/applets/{e5640cf4-dabc-11e9-b23b-0b98712e6d7b}]
alignment='start'
name='Icon Task List'
position=3

[com/solus-project/budgie-panel/applets/{e796985c-26c1-11e9-b617-525400320717}]
alignment='start'
name='Icon Task List'
position=1

[com/solus-project/budgie-panel/applets/{ecd7122e-763a-11e9-b441-9fea6856116e}]
alignment='end'
name='Night Light'
position=7

[com/solus-project/budgie-panel/applets/{ed3ee492-b0da-11e8-88f2-f788eed09528}]
alignment='center'
name='System Monitor'
position=0

[com/solus-project/budgie-panel/applets/{f2a2d458-38ec-11e9-8c24-b3953043e2f5}]
alignment='start'
name='WeatherShow'
position=3

[com/solus-project/budgie-panel/applets/{f420de1c-1ecd-11e9-90d7-525400320717}]
alignment='end'
name='Spacer'
position=14

[com/solus-project/budgie-panel/applets/{f4373a6a-b0da-11e8-88f2-f788eed09528}]
alignment='center'
name='Workspace Switcher'
position=1

[com/solus-project/budgie-panel/applets/{f441f7d6-26c1-11e9-b617-525400320717}]
alignment='end'
name='Raven Trigger'
position=13

[com/solus-project/budgie-panel/applets/{f560374a-763a-11e9-b441-9fea6856116e}]
alignment='end'
name='Spacer'
position=6

[com/solus-project/budgie-panel/applets/{f765c3ca-26c1-11e9-b617-525400320717}]
alignment='end'
name='Clock'
position=12

[com/solus-project/budgie-panel/applets/{f8896310-1ece-11e9-90d7-525400320717}]
alignment='start'
name='Icon Task List'
position=1

[com/solus-project/budgie-panel/applets/{f8b0b3b0-b435-11e8-9fed-3fa40103cb8b}]
alignment='center'
name='Workspace Switcher'
position=1

[com/solus-project/budgie-panel/applets/{f90ab580-b0da-11e8-88f2-f788eed09528}]
alignment='center'
name='Places'
position=2

[com/solus-project/budgie-panel/applets/{f953977e-1ecf-11e9-90d7-525400320717}]
alignment='center'
name='System Monitor'
position=0

[com/solus-project/budgie-panel/applets/{fa8f8f80-77a8-11e9-b2d4-2d94a7138723}]
alignment='end'
name='Raven Trigger'
position=12

[com/solus-project/budgie-panel/applets/{fae5916c-4394-11e8-a325-934928330824}]
alignment='end'
position=9

[com/solus-project/budgie-panel/applets/{fd210fbc-b435-11e8-9fed-3fa40103cb8b}]
alignment='center'
name='Places'
position=2

[com/solus-project/budgie-panel/applets/{fd3aad7e-26c1-11e9-b617-525400320717}]
alignment='end'
name='Status Indicator'
position=1

[com/solus-project/budgie-panel/instance/budgie-menu/{24152416-763a-11e9-b441-9fea6856116e}]
menu-categories-hover=true
menu-headers=true

[com/solus-project/budgie-panel/instance/budgie-menu/{3dde8fe4-6197-11e8-96a0-e7f827d77ada}]
menu-categories-hover=true

[com/solus-project/budgie-panel/instance/budgie-menu/{9c8d1602-b5a5-11e8-a0ad-9dd098ee626e}]
menu-categories-hover=true

[com/solus-project/budgie-panel/instance/budgie-menu/{a35a8565-dabb-11e9-b23b-0b98712e6d7b}]
menu-categories-hover=true
menu-headers=true

[com/solus-project/budgie-panel/instance/budgie-menu/{a59f49ed-4393-11e8-a325-934928330824}]
menu-categories-hover=true

[com/solus-project/budgie-panel/instance/budgie-menu/{ba7190b0-b435-11e8-9fed-3fa40103cb8b}]
menu-categories-hover=true

[com/solus-project/budgie-panel/instance/budgie-menu/{bcb411e4-b0da-11e8-88f2-f788eed09528}]
menu-categories-hover=true

[com/solus-project/budgie-panel/instance/budgie-menu/{dbe864fe-26c1-11e9-b617-525400320717}]
menu-categories-hover=true
menu-headers=true

[com/solus-project/budgie-panel/instance/icon-tasklist/{2c9cc9b8-763a-11e9-b441-9fea6856116e}]
lock-icons=false
only-pinned=false
pinned-launchers=['firefox.desktop', 'org.gnome.Software.desktop', 'libreoffice-startcenter.desktop', 'alacarte-made-34.desktop', 'alacarte-made-35.desktop', 'org.gnome.Maps.desktop', 'update-manager.desktop', 'slingscold.desktop', 'blueman-manager.desktop']
restrict-to-workspace=false
show-all-windows-on-click=false

[com/solus-project/budgie-panel/instance/icon-tasklist/{432adf7a-6197-11e8-96a0-e7f827d77ada}]
pinned-launchers=['chromium-browser.desktop', 'nautilus.desktop', 'libreoffice-startcenter.desktop', 'com.github.wwmm.pulseeffects.desktop', 'org.gnome.Software.desktop', 'update-manager.desktop', 'firefox.desktop', 'com.gexperts.Tilix.desktop', 'xfce4-screenshooter.desktop', 'alacarte-made-34.desktop', 'hime-setup.desktop', 'lxde-x-terminal-emulator.desktop', 'unity-tweak-tool.desktop', 'org.gnome.Builder.desktop']

[com/solus-project/budgie-panel/instance/icon-tasklist/{a87d0e22-b5a5-11e8-a0ad-9dd098ee626e}]
pinned-launchers=['libreoffice-startcenter.desktop', 'xfce4-screenshooter.desktop', 'obs.desktop', 'firefox.desktop', 'chromium-browser.desktop', 'unity-tweak-tool.desktop', 'org.gnome.Software.desktop', 'nautilus.desktop']

[com/solus-project/budgie-panel/instance/icon-tasklist/{ba5efbce-4394-11e8-a325-934928330824}]
pinned-launchers=['chromium-browser.desktop', 'nautilus.desktop', 'libreoffice-startcenter.desktop', 'org.gnome.Software.desktop', 'org.gnome.Epiphany.desktop', 'firefox.desktop', 'obs.desktop', 'kazam.desktop', 'gnome-system-monitor.desktop']

[com/solus-project/budgie-panel/instance/icon-tasklist/{e5640cf4-dabc-11e9-b23b-0b98712e6d7b}]
lock-icons=false
only-pinned=false
pinned-launchers=['chromium-browser.desktop', 'firefox.desktop', 'update-manager.desktop', 'slingscold.desktop', 'libreoffice-startcenter.desktop', 'org.gnome.Software.desktop', 'org.gnome.Maps.desktop', 'org.gnome.Screenshot.desktop', 'blueman-manager.desktop']
restrict-to-workspace=false

[com/solus-project/budgie-panel/instance/icon-tasklist/{e796985c-26c1-11e9-b617-525400320717}]
pinned-launchers=['firefox.desktop', 'libreoffice-startcenter.desktop', 'alacarte-made-35.desktop', 'qtconfig-qt4.desktop', 'alacarte-made-34.desktop', 'org.gnome.Maps.desktop', 'org.gnome.Weather.Application.desktop', 'xfce4-screenshooter.desktop', 'org.gnome.Software.desktop', 'xfce4-sensors.desktop', 'blueman-manager.desktop']
restrict-to-workspace=false

[com/solus-project/budgie-panel/instance/icon-tasklist/{f8896310-1ece-11e9-90d7-525400320717}]
pinned-launchers=['firefox.desktop', 'org.gnome.Software.desktop', 'libreoffice-startcenter.desktop', 'nemo.desktop', 'org.gnome.Maps.desktop', 'org.gnome.Weather.Application.desktop', 'htop.desktop', 'blueman-manager.desktop', 'ccsm.desktop']

[com/solus-project/budgie-panel/instance/places-indicator/{18f75e1c-1ed0-11e9-90d7-525400320717}]
expand-places=false

[com/solus-project/budgie-panel/instance/places-indicator/{5cad6aae-763a-11e9-b441-9fea6856116e}]
expand-places=false

[com/solus-project/budgie-panel/instance/places-indicator/{6e7f88ce-26c2-11e9-b617-525400320717}]
expand-places=false

[com/solus-project/budgie-panel/instance/places-indicator/{807b023e-b5a6-11e8-9c0b-4fd83cf1c1b5}]
expand-places=false

[com/solus-project/budgie-panel/instance/places-indicator/{bc239a63-4393-11e8-a325-934928330824}]
expand-places=false

[com/solus-project/budgie-panel/instance/places-indicator/{c10c7b24-6197-11e8-96a0-e7f827d77ada}]
expand-places=false

[com/solus-project/budgie-panel/instance/spacer/{07a8c642-dabd-11e9-b23b-0b98712e6d7b}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{0bab372a-26c2-11e9-b617-525400320717}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{14dd5db4-26c2-11e9-b617-525400320717}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{1b2d812e-b0db-11e8-88f2-f788eed09528}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{2d65d7d8-b0db-11e8-88f2-f788eed09528}]
size=3

[com/solus-project/budgie-panel/instance/spacer/{43b339a0-b436-11e8-9fed-3fa40103cb8b}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{4b3105d2-763b-11e9-b441-9fea6856116e}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{5783414e-b00a-11e8-a863-172bad3a3449}]
size=3

[com/solus-project/budgie-panel/instance/spacer/{5ecee8ca-763b-11e9-b441-9fea6856116e}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{73375ee0-b436-11e8-9fed-3fa40103cb8b}]
size=2

[com/solus-project/budgie-panel/instance/spacer/{948590d2-1ece-11e9-90d7-525400320717}]
size=4

[com/solus-project/budgie-panel/instance/spacer/{9dee6d56-763a-11e9-b441-9fea6856116e}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{a2ae9924-b5a6-11e8-9c0b-4fd83cf1c1b5}]
size=9

[com/solus-project/budgie-panel/instance/spacer/{a35a8566-dabb-11e9-b23b-0b98712e6d7b}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{a35a856d-dabb-11e9-b23b-0b98712e6d7b}]
size=2

[com/solus-project/budgie-panel/instance/spacer/{a35a8573-dabb-11e9-b23b-0b98712e6d7b}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{a9f75270-763a-11e9-b441-9fea6856116e}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{aa58c280-1ece-11e9-90d7-525400320717}]
size=2

[com/solus-project/budgie-panel/instance/spacer/{bc0418cc-b5a6-11e8-9c0b-4fd83cf1c1b5}]
size=1

[com/solus-project/budgie-panel/instance/spacer/{bc239a67-4393-11e8-a325-934928330824}]
size=3

[com/solus-project/budgie-panel/instance/spacer/{bde3b882-763a-11e9-b441-9fea6856116e}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{be3aa00c-1ece-11e9-90d7-525400320717}]
size=1

[com/solus-project/budgie-panel/instance/spacer/{cde19cc2-763a-11e9-b441-9fea6856116e}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{d644f644-1ecd-11e9-90d7-525400320717}]
size=1

[com/solus-project/budgie-panel/instance/spacer/{e1611d4a-b5a6-11e8-9c0b-4fd83cf1c1b5}]
size=3

[com/solus-project/budgie-panel/instance/spacer/{f420de1c-1ecd-11e9-90d7-525400320717}]
size=2

[com/solus-project/budgie-panel/instance/spacer/{f560374a-763a-11e9-b441-9fea6856116e}]
size=0

[com/solus-project/budgie-panel/panels/{01fa7f64-0944-11ea-9873-cd0a3e495e06}]
applets=['01fa7f74-0944-11ea-9873-cd0a3e495e06', '01fa7f6e-0944-11ea-9873-cd0a3e495e06', '01fa7f73-0944-11ea-9873-cd0a3e495e06', '01fa7f6d-0944-11ea-9873-cd0a3e495e06', '01fa7f69-0944-11ea-9873-cd0a3e495e06', '01fa7f72-0944-11ea-9873-cd0a3e495e06', '01fa7f6c-0944-11ea-9873-cd0a3e495e06', '01fa7f68-0944-11ea-9873-cd0a3e495e06', '01fa7f6b-0944-11ea-9873-cd0a3e495e06', '01fa7f67-0944-11ea-9873-cd0a3e495e06', '01fa7f71-0944-11ea-9873-cd0a3e495e06', '01fa7f70-0944-11ea-9873-cd0a3e495e06', '01fa7f6a-0944-11ea-9873-cd0a3e495e06', '01fa7f75-0944-11ea-9873-cd0a3e495e06', '01fa7f66-0944-11ea-9873-cd0a3e495e06', '01fa7f6f-0944-11ea-9873-cd0a3e495e06', '01fa7f65-0944-11ea-9873-cd0a3e495e06']
location='top'
size=39
transparency='dynamic'

[com/solus-project/budgie-panel/panels/{19f0451a-763a-11e9-b441-9fea6856116e}]
applets=['9402ec40-763a-11e9-b441-9fea6856116e', 'b6c2b22e-763a-11e9-b441-9fea6856116e', '8438b5ec-763a-11e9-b441-9fea6856116e', 'c4d4fa98-763a-11e9-b441-9fea6856116e', 'cde19cc2-763a-11e9-b441-9fea6856116e', '53a32066-763a-11e9-b441-9fea6856116e', 'bde3b882-763a-11e9-b441-9fea6856116e', '39d27456-763b-11e9-b441-9fea6856116e', 'ecd7122e-763a-11e9-b441-9fea6856116e', '2c9cc9b8-763a-11e9-b441-9fea6856116e', '5ecee8ca-763b-11e9-b441-9fea6856116e', '70648dba-763b-11e9-b441-9fea6856116e', '56b4f896-763b-11e9-b441-9fea6856116e', '416748fa-763a-11e9-b441-9fea6856116e', '8a7e16f4-763a-11e9-b441-9fea6856116e', '7556bc5e-763a-11e9-b441-9fea6856116e', '66e227a2-763b-11e9-b441-9fea6856116e', '5cad6aae-763a-11e9-b441-9fea6856116e', 'a5823f20-763a-11e9-b441-9fea6856116e', 'f560374a-763a-11e9-b441-9fea6856116e', '24152416-763a-11e9-b441-9fea6856116e', '4b3105d2-763b-11e9-b441-9fea6856116e', '495b9bce-763a-11e9-b441-9fea6856116e', '9dee6d56-763a-11e9-b441-9fea6856116e', 'a9f75270-763a-11e9-b441-9fea6856116e']
location='bottom'
size=39
transparency='dynamic'

[com/solus-project/budgie-panel/panels/{20123e40-6297-11ea-8e68-b7139faad7dd}]
location='top'
size=39
transparency='dynamic'

[com/solus-project/budgie-panel/panels/{802416c8-b5a5-11e8-a0ad-9dd098ee626e}]
applets=['7626d7b8-b5a6-11e8-9c0b-4fd83cf1c1b5', 'bc0418cc-b5a6-11e8-9c0b-4fd83cf1c1b5', '9ccf9724-b5a6-11e8-9c0b-4fd83cf1c1b5', 'a2ae9924-b5a6-11e8-9c0b-4fd83cf1c1b5', '91e22ba6-b5a6-11e8-9c0b-4fd83cf1c1b5', 'c9253374-b5a6-11e8-9c0b-4fd83cf1c1b5', '807b023e-b5a6-11e8-9c0b-4fd83cf1c1b5', 'c198a21c-b5a6-11e8-9c0b-4fd83cf1c1b5', 'd334e756-b5a6-11e8-9c0b-4fd83cf1c1b5', 'a87d0e22-b5a5-11e8-a0ad-9dd098ee626e', 'e1611d4a-b5a6-11e8-9c0b-4fd83cf1c1b5', '9c8d1602-b5a5-11e8-a0ad-9dd098ee626e', '7b974c64-b5a6-11e8-9c0b-4fd83cf1c1b5', '963b45d4-b5a6-11e8-9c0b-4fd83cf1c1b5', 'aafc1390-b5a6-11e8-9c0b-4fd83cf1c1b5', 'b570b6b4-b5a6-11e8-9c0b-4fd83cf1c1b5', 'd8a57c96-b5a6-11e8-9c0b-4fd83cf1c1b5']
autohide='none'
location='bottom'
size=47
transparency='dynamic'

[com/solus-project/budgie-panel/panels/{a1e8225e-95c8-11ea-9f05-25964637bc33}]
location='top'
size=39
transparency='dynamic'

[com/solus-project/budgie-panel/panels/{a35a8564-dabb-11e9-b23b-0b98712e6d7b}]
applets=['2d6cfe84-dabd-11e9-b23b-0b98712e6d7b', 'a35a8567-dabb-11e9-b23b-0b98712e6d7b', 'a35a8571-dabb-11e9-b23b-0b98712e6d7b', 'e5640cf4-dabc-11e9-b23b-0b98712e6d7b', 'b194ed7a-dabd-11e9-b23b-0b98712e6d7b', 'a35a856a-dabb-11e9-b23b-0b98712e6d7b', 'a35a8575-dabb-11e9-b23b-0b98712e6d7b', 'a35a856f-dabb-11e9-b23b-0b98712e6d7b', 'a35a8566-dabb-11e9-b23b-0b98712e6d7b', 'a35a8570-dabb-11e9-b23b-0b98712e6d7b', 'b0170cb8-e5ca-11e9-8f26-f742aca3153e', '7a2aca6c-dabd-11e9-b23b-0b98712e6d7b', 'a35a8565-dabb-11e9-b23b-0b98712e6d7b', 'a35a8574-dabb-11e9-b23b-0b98712e6d7b', 'a35a856e-dabb-11e9-b23b-0b98712e6d7b', 'a35a856d-dabb-11e9-b23b-0b98712e6d7b', '5b21b33e-dabc-11e9-b23b-0b98712e6d7b', 'a35a8573-dabb-11e9-b23b-0b98712e6d7b', 'a35a8569-dabb-11e9-b23b-0b98712e6d7b', '7e0e882c-dabc-11e9-b23b-0b98712e6d7b', '07a8c642-dabd-11e9-b23b-0b98712e6d7b', 'a35a8568-dabb-11e9-b23b-0b98712e6d7b', '726d84fe-dabd-11e9-b23b-0b98712e6d7b', 'a35a8572-dabb-11e9-b23b-0b98712e6d7b']
autohide='none'
dock-mode=false
location='bottom'
size=39
theme-regions=true
transparency='dynamic'

[com/solus-project/budgie-panel/panels/{b24ee342-09de-11ea-af56-cdd5f8c5d00f}]
applets=['b24ee34a-09de-11ea-af56-cdd5f8c5d00f', 'b24ee34f-09de-11ea-af56-cdd5f8c5d00f', 'b24ee345-09de-11ea-af56-cdd5f8c5d00f', 'b24ee34e-09de-11ea-af56-cdd5f8c5d00f', 'b24ee353-09de-11ea-af56-cdd5f8c5d00f', 'b24ee34d-09de-11ea-af56-cdd5f8c5d00f', 'b24ee344-09de-11ea-af56-cdd5f8c5d00f', 'b24ee349-09de-11ea-af56-cdd5f8c5d00f', 'b24ee352-09de-11ea-af56-cdd5f8c5d00f', 'b24ee34c-09de-11ea-af56-cdd5f8c5d00f', 'b24ee343-09de-11ea-af56-cdd5f8c5d00f', 'b24ee348-09de-11ea-af56-cdd5f8c5d00f', 'b24ee34b-09de-11ea-af56-cdd5f8c5d00f', 'b24ee347-09de-11ea-af56-cdd5f8c5d00f', 'b24ee351-09de-11ea-af56-cdd5f8c5d00f', 'b24ee350-09de-11ea-af56-cdd5f8c5d00f', 'b24ee346-09de-11ea-af56-cdd5f8c5d00f']
location='top'
size=39
transparency='dynamic'

[com/solus-project/budgie-panel/panels/{d764ec9a-26c1-11e9-b617-525400320717}]
applets=['f2a2d458-38ec-11e9-8c24-b3953043e2f5', '1183ec96-26c2-11e9-b617-525400320717', 'dbe864fe-26c1-11e9-b617-525400320717', 'f765c3ca-26c1-11e9-b617-525400320717', '67bba338-26c2-11e9-b617-525400320717', '4e10f24e-26c2-11e9-b617-525400320717', '39dc111e-26c2-11e9-b617-525400320717', '407b4134-26c2-11e9-b617-525400320717', '2667f1de-26c2-11e9-b617-525400320717', '14dd5db4-26c2-11e9-b617-525400320717', '0460566c-26c2-11e9-b617-525400320717', '1ee926b2-26c2-11e9-b617-525400320717', 'fd3aad7e-26c1-11e9-b617-525400320717', 'e796985c-26c1-11e9-b617-525400320717', '6e7f88ce-26c2-11e9-b617-525400320717', '44bab28e-26c2-11e9-b617-525400320717', 'f441f7d6-26c1-11e9-b617-525400320717', '0bab372a-26c2-11e9-b617-525400320717', '740a8e42-26c2-11e9-b617-525400320717', '55def71e-26c2-11e9-b617-525400320717', '2bce2634-26c2-11e9-b617-525400320717']
location='bottom'
size=39
transparency='dynamic'

[com/solus-project/budgie-raven]
allow-volume-overdrive=true
enable-week-numbers=true
show-power-strip=true

[com/solus-project/budgie-wm]
attach-modal-dialogs=true
button-layout='appmenu:minimize,maximize,close'
button-style='traditional'
caffeine-mode=false
center-windows=false
edge-tiling=true
focus-mode=false
force-unredirect=true

[com/system76/hidpi]
enable=true
mode='hidpi'

[com/ubuntu/content/hub/source]
contacts=@as []
pictures=['']
videos=['']

[com/ubuntu/sound]
allow-amplified-volume=true

[com/ubuntu/update-notifier]
release-check-time=uint32 1617541254
show-apport-crashes=false

[com/ubuntu/user-interface]
scale-factor={'LVDS-1': 8}

[com/ubuntu/user-interface/desktop]
cursor-size=24
scaling-factor=uint32 0
text-scaling-factor=1.0

[desktop/gnome/crypto/cache]
gpg-cache-method='session'

[desktop/gnome/crypto/pgp]
keyservers=@as []

[desktop/ibus/general]
dconf-preserve-name-prefixes=['/desktop/ibus/engine/pinyin', '/desktop/ibus/engine/bopomofo', '/desktop/ibus/engine/hangul']
embed-preedit-text=true
enable-by-default=false
engines-order=['xkb:us::eng', 'xkb:ru::rus']
preload-engines=['xkb:us::eng', 'xkb:ru::rus']
switcher-delay-time=400
use-global-engine=true
use-system-keyboard-layout=false
use-xmodmap=true
version='1.5.22'
xkb-latin-layouts=['ara', 'bg', 'cz', 'dev', 'gr', 'gur', 'in', 'jp(kana)', 'mal', 'mkd', 'ru', 'ua']

[desktop/ibus/general/hotkey]
disable-unconditional=@as []
enable-unconditional=@as []
next-engine=['Alt+Shift_L']
next-engine-in-menu=['Alt+Shift_L']
prev-engine=@as []
previous-engine=@as []
trigger=['Control+space', 'Zenkaku_Hankaku', 'Alt+Kanji', 'Alt+grave', 'Hangul', 'Alt+Release+Alt_R']
triggers=['<Shift>alt']

[desktop/ibus/panel]
auto-hide-timeout=10000
custom-font='Sans 10'
follow-input-cursor-when-always-shown=false
lookup-table-orientation=1
property-icon-delay-time=500
show=0
show-icon-on-systray=false
show-im-name=false
use-custom-font=false
x=-1
xkb-icon-rgba='#415099'
y=-1

[desktop/ibus/panel/emoji]
favorite-annotations=@as []
favorites=@as []
font='Monospace 16'
has-partial-match=false
hotkey=['<Control><Shift>e']
lang='en'
load-emoji-at-startup=true
load-unicode-at-startup=false
partial-match-condition=0
partial-match-length=3
unicode-hotkey=['<Control><Shift>u']

[io/github/celluloid-player/celluloid]
always-use-floating-controls=false
settings-migrated=true
use-skip-buttons-for-playlist=true

[io/github/celluloid-player/celluloid/window-state]
height=605
playlist-width=250
show-controls=true
show-playlist=false
volume=1.0
width=1024

[io/github/gnome-mpv]
settings-migrated=true

[io/github/gnome-mpv/window-state]
height=395
playlist-width=250
show-controls=true
show-playlist=false
volume=0.9375
width=794

[net/launchpad/plank/docks/dock1]
alignment='center'
auto-pinning=true
current-workspace-only=false
dock-items=['liteusermanager.dockitem', 'gufw.dockitem', 'gparted.dockitem', 'org.gnome.baobab.dockitem', 'org.gnome.DiskUtility.dockitem', 'Thunar.dockitem', 'caja.dockitem', 'org.gnome.Nautilus.dockitem', 'nemo-1.dockitem', 'nemo.dockitem', 'org.gnome.Terminal.dockitem', 'lxterminal.dockitem', 'terminology.dockitem', 'gnome-system-monitor.dockitem', 'alacarte-made-48.dockitem', 'synaptic.dockitem', 'org.gnome.Todo.dockitem', 'org.gnome.Totem.dockitem', 'libreoffice-startcenter.dockitem', 'ca.desrt.dconf-editor.dockitem', 'thunderbird.dockitem', 'xfce-display-settings.dockitem', 'unity-tweak-tool.dockitem', 'onboard-settings.dockitem', 'onboard.dockitem', 'mate-about.dockitem', 'exo-preferred-applications.dockitem', 'yelp.dockitem', 'org.gnome.Extensions.dockitem', 'gnome-ppp.dockitem', 'JB-java-jdk8.dockitem', 'JB-policytool-jdk8.dockitem', 'JB-controlpanel-jdk8.dockitem', 'JB-jvisualvm-jdk8.dockitem', 'JB-mission-control-jdk8.dockitem', 'kodi.dockitem', 'budgie-desktop-settings.dockitem', 'cinnamon-settings.dockitem', 'com.obsproject.Studio.dockitem', 'obs.dockitem', 'rhythmbox.dockitem', 'pavucontrol.dockitem', 'com.github.wwmm.pulseeffects.dockitem', 'PlayOnLinux.dockitem', 'steam.dockitem', 'alacarte-made-61.dockitem', 'firefox.dockitem', 'systemback.dockitem']
hide-delay=500
hide-mode='dodge-maximized'
icon-size=24
items-alignment='center'
lock-items=false
monitor=''
offset=0
pinned-only=false
position='bottom'
pressure-reveal=false
show-dock-item=false
theme='Transparent'
tooltips-enabled=true
unhide-delay=0
zoom-enabled=true
zoom-percent=150

[org.gnome.settings-daemon.plugins.media-keys.custom-keybindings/custom1]
binding='<Alt>Tab'
command='/usr/lib/budgie-desktop/plugins/budgie-wprviews/wprv'
name='prv_all'

[org.gnome.settings-daemon.plugins.media-keys.custom-keybindings/custom2]
binding='<Alt>grave'
command='/usr/lib/budgie-desktop/plugins/budgie-wprviews/wprv current'
name='prv_single'

[org/blueman/general]
plugin-list=['!TransferService']
services-last-item=1
window-properties=[618, 373, 640, 232]

[org/blueman/network]
nap-enable=false

[org/blueman/plugins/powermanager]
auto-power-on=@mb false

[org/blueman/transfer]
shared-path=''

[org/cinnamon]
active-display-scale=1
alttab-switcher-delay=100
alttab-switcher-style='coverflow'
applet-cache-updated=1548212940
command-history=['gnome-terminal', '']
desklet-snap-interval=25
desktop-effects-close-effect='scale'
desktop-effects-close-time=400
desktop-effects-close-transition='easeOutQuad'
desktop-effects-map-effect='flyUp'
desktop-effects-map-time=400
desktop-effects-map-transition='easeOutElastic'
desktop-effects-maximize-effect='scale'
desktop-effects-maximize-time=100
desktop-effects-maximize-transition='easeInExpo'
desktop-effects-minimize-effect='flyDown'
desktop-effects-minimize-time=400
desktop-effects-minimize-transition='easeOutExpo'
desktop-effects-tile-effect='scale'
desktop-effects-tile-time=100
desktop-effects-tile-transition='easeInExpo'
desktop-effects-unmaximize-effect='scale'
desktop-effects-unmaximize-time=100
desktop-effects-unmaximize-transition='easeOutElastic'
enabled-applets=['panel1:right:1:systray@cinnamon.org:0', 'panel1:left:0:menu@cinnamon.org:1', 'panel1:right:10:show-desktop@cinnamon.org:2', 'panel1:left:2:panel-launchers@cinnamon.org:3', 'panel1:left:3:window-list@cinnamon.org:4', 'panel1:right:3:keyboard@cinnamon.org:5', 'panel1:right:4:notifications@cinnamon.org:6', 'panel1:right:5:removable-drives@cinnamon.org:7', 'panel1:right:6:user@cinnamon.org:8', 'panel1:right:2:network@cinnamon.org:9', 'panel1:right:8:power@cinnamon.org:11', 'panel1:right:9:calendar@cinnamon.org:12', 'panel1:right:7:sound@cinnamon.org:13', 'panel1:right:0:xrandr@cinnamon.org:14']
enabled-desklets=['clock@cinnamon.org:0:1000:275', 'launcher@cinnamon.org:1:925:275', 'launcher@cinnamon.org:2:925:350']
enabled-extensions=['!DesktopCube@yare']
extension-cache-updated=1548207497
hotcorner-layout=['scale:true:0', 'gnome-terminal:true:0', 'expo:false:0', 'expo:true:0']
next-applet-id=15
next-desklet-id=3
panel-edit-mode=false
panel-launchers=['DEPRECATED']
panels-enabled=['1:0:bottom']
panels-height=['1:33']
panels-resizable=['1:true']
workspace-expo-view-as-grid=true
workspace-osd-duration=400
workspace-osd-x=50
workspace-osd-y=50

[org/cinnamon/cinnamon-session]
quit-time-delay=60

[org/cinnamon/desklets/launcher]
launcher-list=['2:KODI.desktop']

[org/cinnamon/desktop/a11y/applications]
screen-keyboard-enabled=false
screen-reader-enabled=false

[org/cinnamon/desktop/a11y/keyboard]
bouncekeys-delay=300
mousekeys-accel-time=300
mousekeys-init-delay=300
mousekeys-max-speed=10
slowkeys-delay=300

[org/cinnamon/desktop/a11y/mouse]
dwell-click-enabled=false
dwell-threshold=10
dwell-time=1.2
secondary-click-enabled=false
secondary-click-time=1.2

[org/cinnamon/desktop/background]
picture-options='zoom'

[org/cinnamon/desktop/background/slideshow]
delay=15
image-source='xml:///usr/share/gnome-background-properties/disco-wallpapers.xml'

[org/cinnamon/desktop/interface]
clock-show-date=true
clock-show-seconds=true
cursor-blink-time=1200
cursor-size=24
cursor-theme='breeze_cursors'
font-name='Ubuntu 11.5'
gtk-theme='Pop-dark-oomox-griggorii_theme_2020_V4'
icon-theme='oomox-griggorii'
keyboard-layout-prefer-variant-names=false
scaling-factor=uint32 0
text-scaling-factor=1.0
toolkit-accessibility=false

[org/cinnamon/desktop/media-handling]
autorun-x-content-ignore=@as []
autorun-x-content-open-folder=@as []
autorun-x-content-start-app=['x-content/unix-software', 'x-content/bootable-media']

[org/cinnamon/desktop/notifications]
bottom-notifications=false
remove-old=true

[org/cinnamon/desktop/screensaver]
layout-group=0

[org/cinnamon/desktop/sound]
event-sounds=false
volume-sound-enabled=true
volume-sound-file='/usr/share/sounds/ubuntu/stereo/button-pressed.ogg'

[org/cinnamon/desktop/wm/preferences]
button-layout='menu,shade,stick:minimize,maximize,close'
min-window-opacity=30
workspace-names=['Workspace 1', 'Workspace 2', '', '', '']

[org/cinnamon/muffin]
resize-threshold=24
tile-hud-threshold=25
unredirect-fullscreen-windows=true
workspace-cycle=true

[org/cinnamon/settings-daemon/peripherals/keyboard]
delay=uint32 500
numlock-state='off'
repeat-interval=uint32 30

[org/cinnamon/settings-daemon/peripherals/mouse]
double-click=400
drag-threshold=8
motion-threshold=1

[org/cinnamon/settings-daemon/peripherals/touchpad]
motion-threshold=1
touchpad-enabled=true

[org/cinnamon/settings-daemon/plugins/power]
idle-dim-battery=true
lid-close-ac-action='suspend'
lid-close-battery-action='suspend'
lid-close-suspend-with-external-monitor=false
sleep-display-ac=1800
sleep-display-battery=1800
sleep-inactive-ac-timeout=0
sleep-inactive-battery-timeout=0

[org/cinnamon/sounds]
close-enabled=true
close-file='/usr/share/sounds/ubuntu/stereo/button-pressed.ogg'
login-enabled=true
login-file='/usr/share/sounds/ubuntu/stereo/desktop-login.ogg'
logout-enabled=true
logout-file='/usr/share/sounds/ubuntu/stereo/desktop-logout.ogg'
map-enabled=true
map-file='/usr/share/sounds/ubuntu/stereo/service-logout.ogg'
maximize-enabled=true
maximize-file='/usr/share/sounds/ubuntu/stereo/service-login.ogg'
minimize-enabled=true
minimize-file='/usr/share/sounds/ubuntu/stereo/service-login.ogg'
notification-enabled=true
notification-file='/usr/share/sounds/ubuntu/stereo/message-new-instant.ogg'
plug-enabled=true
plug-file='/usr/share/sounds/ubuntu/stereo/bell.ogg'
switch-enabled=true
switch-file='/usr/share/cinnamon/sounds/bell.ogg'
tile-enabled=true
tile-file='/usr/share/sounds/ubuntu/stereo/window-slide.ogg'
unmaximize-enabled=true
unmaximize-file='/usr/share/sounds/ubuntu/stereo/message.ogg'
unplug-enabled=true
unplug-file='/usr/share/sounds/ubuntu/stereo/bell.ogg'

[org/cinnamon/theme]
name='Adapta-Nokto'
theme-cache-updated=1549188375

[org/compiz]
current-profile='unity'
existing-profiles=['Default', 'unity', 'unity-lowgfx']

[org/compiz/integrated]
command-window-screenshot='gnome-screenshot --window'
display-all-workspaces=false
run-command-1=['disabled']
run-command-10=['disabled']
run-command-11=['disabled']
run-command-12=['disabled']
run-command-2=['disabled']
run-command-3=['disabled']
run-command-4=['disabled']
run-command-5=['disabled']
run-command-6=['disabled']
run-command-7=['disabled']
run-command-8=['disabled']
run-command-9=['disabled']
show-hud=['<Alt>']

[org/compiz/profiles/Default]
plugins-with-set-keys=['core', 'mousepoll', 'wall', 'move', 'switcher', 'session', 'decor', 'scale', 'opengl', 'composite', 'fade', 'place', 'ezoom', 'grid', 'snap', 'animation', 'resize', 'vpswitch', 'expo', 'workarounds', 'wizard', 'colorfilter', 'rotate', 'cube', 'unityshell', 'animationaddon', 'animationplus', 'bench', 'thumbnail', 'td', 'wobbly', 'notification']

[org/compiz/profiles/Default/plugins/animation]
close-matches=['((type=Normal | Unknown) | name=sun-awt-X11-XFramePeer | name=sun-awt-X11-XDialogPeer) & !(role=toolTipTip | role=qtooltip_label) & !(type=Normal & override_redirect=1) & !(name=gnome-screensaver) & !(name=gnome-screenshot)', '((type=Menu | PopupMenu | DropdownMenu | Combo | Dialog | ModalDialog | Normal) & !(class=.exe$))', '(type=Tooltip | Notification | Utility) & !(name=compiz) & !(title=notify-osd)']
open-matches=['((type=Normal | Unknown) | name=sun-awt-X11-XFramePeer | name=sun-awt-X11-XDialogPeer) & !(role=toolTipTip | role=qtooltip_label) & !(type=Normal & override_redirect=1) & !(name=gnome-screensaver)', '((type=Menu | PopupMenu | DropdownMenu | Combo | Dialog | ModalDialog | Normal) & !(class=.exe$))', '(type=Tooltip | Notification | Utility) & !(name=compiz) & !(title=notify-osd)']
unminimize-effects=['animation:Glide 2']

[org/compiz/profiles/Default/plugins/animationaddon]
beam-color='#7f7f7fff'
fire-color='#ff3305ff'

[org/compiz/profiles/Default/plugins/animationplus]
bonanza-color='#ff3305ff'

[org/compiz/profiles/Default/plugins/core]
active-plugins=['core', 'composite', 'opengl', 'compiztoolbox', 'decor', 'gnomecompat', 'imgpng', 'mousepoll', 'move', 'place', 'regex', 'resize', 'session', 'vpswitch', 'wobbly', 'animation', 'animationaddon', 'cube']

[org/compiz/profiles/Default/plugins/cubeaddon]
ground-color1='#b3b3b3cc'
ground-color2='#b3b3b300'

[org/compiz/profiles/Default/plugins/decor]
active-shadow-color='#00000080'
inactive-shadow-color='#000000ff'

[org/compiz/profiles/Default/plugins/expo]
ground-color1='#b3b3b3cc'
ground-color2='#b3b3b300'

[org/compiz/profiles/Default/plugins/ezoom]
zoom-box-fill-color='#2f2f2f4f'
zoom-box-outline-color='#2f2f4f9f'

[org/compiz/profiles/Default/plugins/firepaint]
fire-color='#ff3305ff'

[org/compiz/profiles/Default/plugins/freewins]
circle-color='#54befb80'
cross-line-color='#1800ffff'
line-color='#1800ffff'
snap-threshold=50

[org/compiz/profiles/Default/plugins/opengl]
texture-filter=0

[org/compiz/profiles/Default/plugins/resizeinfo]
gradient-1='#cccce6cc'
gradient-2='#f3f3f3cc'
gradient-3='#d9d9d9cc'
outline-color='#e6e6e6ff'

[org/compiz/profiles/Default/plugins/screenshot]
selection-fill-color='#2f2f4f4f'
selection-outline-color='#2f2f4f9f'

[org/compiz/profiles/Default/plugins/shift]
ground-color1='#b3b3b3cc'
ground-color2='#b3b3b300'

[org/compiz/profiles/Default/plugins/showmouse]
color='#ffdf3fff'

[org/compiz/profiles/Default/plugins/staticswitcher]
background-color='#333333d9'

[org/compiz/profiles/Default/plugins/switcher]
background-color='#333333d9'

[org/compiz/profiles/Default/plugins/thumbnail]
font-background-color='#0000007f'
thumb-color='#0000007f'

[org/compiz/profiles/Default/plugins/unityshell]
inactive-shadow-color='#000000a5'

[org/compiz/profiles/Default/plugins/wall]
arrow-base-color='#e6e6e6d9'
arrow-shadow-color='#dcdcdcd9'
thumb-highlight-gradient-shadow-color='#dfdfdfff'

[org/compiz/profiles/Default/plugins/wobbly]
focus-effect=1
map-effect=1

[org/compiz/profiles/Default/plugins/workarounds]
fglrx-xgl-fix=true
force-swap-buffers=true
qt-fix=true

[org/compiz/profiles/unity-lowgfx]
plugins-with-set-keys=['addhelper', 'unityshell', 'place', 'resize', 'water', 'animation', 'opengl', 'blur', 'session', 'unitymtgrabhandles', 'scaleaddon', 'commands', 'colorfilter', 'mousepoll', 'opacify', 'showrepaint', 'wall', 'fade', 'titleinfo', 'thumbnail', 'staticswitcher', 'shift', 'extrawm', 'wallpaper', 'freewins', 'wizard', 'maximumize', 'kdecompat', 'grid', 'mag', 'wobbly', 'resizeinfo', 'td', 'workspacenames', 'animationsim', 'decor', 'neg', 'crashhandler', 'snap', 'clone', 'ezoom', 'trailfocus', 'animationjc', 'winrules', 'annotate', 'ring', 'switcher', 'fadedesktop', 'firepaint', 'animationplus', 'shelf', 'splash', 'workarounds', 'matecompat', 'obs', 'imgjpeg', 'mblur', 'showmouse', 'scale', 'notification', 'bench', 'composite', 'animationaddon', 'cube', 'put', 'vpswitch', 'screenshot', 'move', 'cubeaddon', 'showdesktop', 'rotate', 'expo', 'scalefilter', 'widget', 'core', 'imgsvg']

[org/compiz/profiles/unity-lowgfx/plugins/animation]
close-matches=['((type=Normal | Unknown) | name=sun-awt-X11-XFramePeer | name=sun-awt-X11-XDialogPeer) & !(role=toolTipTip | role=qtooltip_label) & !(type=Normal & override_redirect=1) & !(name=gnome-screensaver) & !(name=gnome-screenshot)', '((type=Menu | PopupMenu | DropdownMenu | Combo | Dialog | ModalDialog | Normal) & !(class=.exe$))', '(type=Tooltip | Notification | Utility) & !(name=compiz) & !(title=notify-osd)']
open-matches=['((type=Normal | Unknown) | name=sun-awt-X11-XFramePeer | name=sun-awt-X11-XDialogPeer) & !(role=toolTipTip | role=qtooltip_label) & !(type=Normal & override_redirect=1) & !(name=gnome-screensaver)', '((type=Menu | PopupMenu | DropdownMenu | Combo | Dialog | ModalDialog | Normal) & !(class=.exe$))', '(type=Tooltip | Notification | Utility) & !(name=compiz) & !(title=notify-osd)']
unminimize-effects=['animation:Glide 2']

[org/compiz/profiles/unity-lowgfx/plugins/animationaddon]
beam-color='#7f7f7fff'
fire-color='#ff3305ff'

[org/compiz/profiles/unity-lowgfx/plugins/animationplus]
bonanza-color='#ff3305ff'

[org/compiz/profiles/unity-lowgfx/plugins/composite]
refresh-rate=76

[org/compiz/profiles/unity-lowgfx/plugins/core]
active-plugins=['core', 'composite', 'opengl', 'place', 'regex', 'resize', 'session', 'snap', 'vpswitch', 'wall', 'workarounds', 'compiztoolbox', 'copytex', 'fade', 'grid', 'imgpng', 'mousepoll', 'move', 'scale', 'unitymtgrabhandles', 'expo', 'ezoom', 'unityshell']
hsize=4
outputs=['1366x768+0+0']
vsize=4

[org/compiz/profiles/unity-lowgfx/plugins/cubeaddon]
ground-color1='#b3b3b3cc'
ground-color2='#b3b3b300'

[org/compiz/profiles/unity-lowgfx/plugins/decor]
active-shadow-color='#00000080'
inactive-shadow-color='#000000ff'

[org/compiz/profiles/unity-lowgfx/plugins/expo]
expo-animation=3
ground-color1='#b3b3b3cc'
ground-color2='#b3b3b300'
x-offset=50

[org/compiz/profiles/unity-lowgfx/plugins/ezoom]
spec-target-focus=false
speed=100.0
zoom-box-fill-color='#2f2f2f4f'
zoom-box-outline-color='#2f2f4f9f'

[org/compiz/profiles/unity-lowgfx/plugins/fade]
fade-mode=1
fade-time=1

[org/compiz/profiles/unity-lowgfx/plugins/firepaint]
fire-color='#ff3305ff'

[org/compiz/profiles/unity-lowgfx/plugins/freewins]
circle-color='#54befb80'
cross-line-color='#1800ffff'
line-color='#1800ffff'
snap-threshold=50

[org/compiz/profiles/unity-lowgfx/plugins/gnomecompat]
main-menu-key='Disabled'
run-key='Disabled'

[org/compiz/profiles/unity-lowgfx/plugins/grid]
animation-duration=0
draw-stretched-window=false
top-right-corner-action=10

[org/compiz/profiles/unity-lowgfx/plugins/move]
increase-border-contrast=true
lazy-positioning=true
mode=2

[org/compiz/profiles/unity-lowgfx/plugins/opengl]
texture-filter=0

[org/compiz/profiles/unity-lowgfx/plugins/resize]
increase-border-contrast=true
mode=2

[org/compiz/profiles/unity-lowgfx/plugins/resizeinfo]
gradient-1='#cccce6cc'
gradient-2='#f3f3f3cc'
gradient-3='#d9d9d9cc'
outline-color='#e6e6e6ff'

[org/compiz/profiles/unity-lowgfx/plugins/scale]
skip-animation=true

[org/compiz/profiles/unity-lowgfx/plugins/screenshot]
selection-fill-color='#2f2f4f4f'
selection-outline-color='#2f2f4f9f'

[org/compiz/profiles/unity-lowgfx/plugins/shift]
ground-color1='#b3b3b3cc'
ground-color2='#b3b3b300'

[org/compiz/profiles/unity-lowgfx/plugins/showdesktop]
skip-animation=true

[org/compiz/profiles/unity-lowgfx/plugins/showmouse]
color='#ffdf3fff'

[org/compiz/profiles/unity-lowgfx/plugins/staticswitcher]
background-color='#333333d9'

[org/compiz/profiles/unity-lowgfx/plugins/switcher]
background-color='#333333d9'

[org/compiz/profiles/unity-lowgfx/plugins/thumbnail]
font-background-color='#0000007f'
thumb-color='#0000007f'

[org/compiz/profiles/unity-lowgfx/plugins/unityshell]
active-shadow-radius=3
autohide-animation=1
dash-blur-experimental=0
edge-responsiveness=4.3504586219787598
icon-size=34
inactive-shadow-color='#000000a5'
inactive-shadow-radius=2
launcher-hide-mode=0
menus-discovery-fadein=0
menus-discovery-fadeout=0
menus-fadein=0
menus-fadeout=0
override-decoration-theme=true
reveal-trigger=0
shadow-x-offset=1
shadow-y-offset=1

[org/compiz/profiles/unity-lowgfx/plugins/wall]
arrow-base-color='#e6e6e6d9'
arrow-shadow-color='#dcdcdcd9'
slide-duration=0.0
thumb-highlight-gradient-shadow-color='#dfdfdfff'

[org/compiz/profiles/unity]
plugins-with-set-keys=['animationjc', 'blur', 'ezoom', 'td', 'switcher', 'animation', 'addhelper', 'animationplus', 'widget', 'screenshot', 'resize', 'showrepaint', 'vpswitch', 'splash', 'wizard', 'snap', 'ring', 'maximumize', 'animationsim', 'kdecompat', 'rotate', 'put', 'grid', 'titleinfo', 'resizeinfo', 'place', 'showdesktop', 'mag', 'expo', 'thumbnail', 'session', 'water', 'workspacenames', 'core', 'notification', 'unityshell', 'workarounds', 'cubeaddon', 'composite', 'firepaint', 'opacify', 'obs', 'fade', 'extrawm', 'mousepoll', 'cube', 'wobbly', 'matecompat', 'clone', 'bench', 'crashhandler', 'colorfilter', 'gnomecompat', 'imgjpeg', 'trailfocus', 'unitymtgrabhandles', 'shelf', 'scaleaddon', 'animationaddon', 'decor', 'neg', 'freewins', 'winrules', 'shift', 'fadedesktop', 'staticswitcher', 'mblur', 'move', 'wallpaper', 'annotate', 'scalefilter', 'showmouse', 'scale', 'commands', 'wall', 'opengl', 'imgsvg']

[org/compiz/profiles/unity/plugins/animation]
close-matches=['((type=Normal | Unknown) | name=sun-awt-X11-XFramePeer | name=sun-awt-X11-XDialogPeer) & !(role=toolTipTip | role=qtooltip_label) & !(type=Normal & override_redirect=1) & !(name=gnome-screensaver) & !(name=gnome-screenshot)', '((type=Menu | PopupMenu | DropdownMenu | Combo | Dialog | ModalDialog | Normal) & !(class=.exe$))', '(type=Tooltip | Notification | Utility) & !(name=compiz) & !(title=notify-osd)']
close-random-effects=@as []
open-matches=['((type=Normal | Unknown) | name=sun-awt-X11-XFramePeer | name=sun-awt-X11-XDialogPeer) & !(role=toolTipTip | role=qtooltip_label) & !(type=Normal & override_redirect=1) & !(name=gnome-screensaver)', '((type=Menu | PopupMenu | DropdownMenu | Combo | Dialog | ModalDialog | Normal) & !(class=.exe$))', '(type=Tooltip | Notification | Utility) & !(name=compiz) & !(title=notify-osd)']
unminimize-effects=['animation:Glide 2']

[org/compiz/profiles/unity/plugins/animationaddon]
beam-color='#7f7f7fff'
fire-color='#ff3305ff'

[org/compiz/profiles/unity/plugins/animationplus]
bonanza-color='#ff3305ff'

[org/compiz/profiles/unity/plugins/blur]
gaussian-radius=15
pulse=true

[org/compiz/profiles/unity/plugins/composite]
refresh-rate=76

[org/compiz/profiles/unity/plugins/core]
active-plugins=['core', 'composite', 'opengl', 'place', 'regex', 'resize', 'session', 'shift', 'vpswitch', 'water', 'animation', 'blur', 'compiztoolbox', 'grid', 'imgpng', 'mousepoll', 'move', 'notification', 'wobbly', 'workarounds', 'fade', 'cube', 'gears', 'rotate', 'scale', 'td', 'cubeaddon', 'expo', 'ezoom', 'switcher', 'unityshell', 'ring']
hsize=4
outputs=['640x480+0+0']
vsize=4

[org/compiz/profiles/unity/plugins/cubeaddon]
ground-color1='#b3b3b3cc'
ground-color2='#b3b3b300'

[org/compiz/profiles/unity/plugins/decor]
active-shadow-color='#00000080'
inactive-shadow-color='#000000ff'

[org/compiz/profiles/unity/plugins/expo]
distance=0.004999999888241291
expo-edge='TopLeft|BottomRight'
ground-color1='#b3b3b3cc'
ground-color2='#b3b3b300'
selected-color='#ab1751ff'
vp-saturation=40.0
x-offset=50

[org/compiz/profiles/unity/plugins/ezoom]
zoom-box-fill-color='#2f2f2f4f'
zoom-box-outline-color='#2f2f4f9f'

[org/compiz/profiles/unity/plugins/firepaint]
fire-color='#ff3305ff'

[org/compiz/profiles/unity/plugins/freewins]
circle-color='#54befb80'
cross-line-color='#1800ffff'
line-color='#1800ffff'
snap-threshold=50

[org/compiz/profiles/unity/plugins/gnomecompat]
main-menu-key='Disabled'
run-key='Disabled'

[org/compiz/profiles/unity/plugins/grid]
fill-color='#0056ff4f'
outline-color='#3f0076ff'
top-right-corner-action=10

[org/compiz/profiles/unity/plugins/notification]
max-log-level=3

[org/compiz/profiles/unity/plugins/opengl]
texture-filter=2

[org/compiz/profiles/unity/plugins/resizeinfo]
gradient-1='#cccce6cc'
gradient-2='#f3f3f3cc'
gradient-3='#d9d9d9cc'
outline-color='#e6e6e6ff'

[org/compiz/profiles/unity/plugins/scale]
initiate-all-edge=''
initiate-edge='TopRight'
overlay-icon=1
spacing=0

[org/compiz/profiles/unity/plugins/screenshot]
selection-fill-color='#2f2f4f4f'
selection-outline-color='#2f2f4f9f'

[org/compiz/profiles/unity/plugins/shift]
ground-color1='#b3b3b3cc'
ground-color2='#b3b3b300'
initiate-key='<Control>Tab'
prev-key='Disabled'

[org/compiz/profiles/unity/plugins/showmouse]
color='#ffdf3fff'

[org/compiz/profiles/unity/plugins/staticswitcher]
background-color='#333333d9'

[org/compiz/profiles/unity/plugins/switcher]
background-color='#333333d9'

[org/compiz/profiles/unity/plugins/thumbnail]
font-background-color='#0000007f'
thumb-color='#0000007f'

[org/compiz/profiles/unity/plugins/unityshell]
alt-tab-bias-viewport=false
background-color='#2e3436ff'
edge-responsiveness=4.3504586219787598
icon-size=34
inactive-shadow-color='#000000a5'
launch-animation=1
launcher-hide-mode=0
launcher-opacity=0.66600000858306885
launcher-switcher-prev='Disabled'
menus-discovery-duration=2
num-launchers=0
panel-opacity=0.0
panel-opacity-maximized-toggle=true
reveal-trigger=0

[org/compiz/profiles/unity/plugins/wall]
arrow-base-color='#e6e6e6d9'
arrow-shadow-color='#dcdcdcd9'
thumb-highlight-gradient-shadow-color='#dfdfdfff'

[org/compiz/profiles/unity/plugins/water]
title-wave=true

[org/fedoraproject/FirewallConfig]
show-active-bindings=true
show-direct=true
show-helpers=true
show-icmp-types=true
show-ipsets=true
show-lockdown-whitelist=true

[org/freedesktop/color-helper]
profile-upload-uri='https://github.com/Griggorii/DisplayCal-3.7.1.4-Ubuntu-20.04--Focal-Fossa--portation_griggorii'

[org/freedesktop/pulseaudio/module-groups/combine]
args0=''
enabled=false
name0='module-combine'

[org/freedesktop/tracker/miner/files]
index-recursive-directories=@as []
index-single-directories=@as []

[org/gnome/Characters]
recent-characters=['↓']

[org/gnome/Disks]
image-dir-uri=''

[org/gnome/GPaste]
history-name='history'
track-changes=false

[org/gnome/Geary]
folder-list-pane-position-horizontal=102
messages-pane-position=356
migrated-config=true
window-height=688

[org/gnome/Totem]
active-plugins=['variable-rate', 'vimeo', 'autoload-subtitles', 'totem-im-status', 'skipto', 'recent', 'rotation', 'screensaver', 'save-file', 'dbusservice', 'screenshot', 'movie-properties', 'apple-trailers', 'media-player-keys', 'pythonconsole', 'open-directory', 'opensubtitles']
audio-output-type='stereo'
disable-deinterlacing=false
repeat=true
subtitle-encoding='UTF-8'

[org/gnome/Weather/Application]
locations=[<(uint32 2, <('Irkutsk', 'UIII', true, [(0.91222542819346697, 1.8206693038565154)], [(0.91276841757705507, 1.8203153859907963)])>)>]

[org/gnome/baobab/ui]
active-chart='rings'
window-size=(850, 481)
window-state=87168

[org/gnome/boxes]
first-run=false
view='icon-view'
window-maximized=false
window-position=[34, 28]
window-size=[894, 548]

[org/gnome/brasero/plugins/audio2cue]
priority=0

[org/gnome/brasero/plugins/burn-uri]
priority=0

[org/gnome/brasero/plugins/cdrdao]
priority=0

[org/gnome/brasero/plugins/dvd-rw-format]
priority=0

[org/gnome/brasero/plugins/dvdauthor]
priority=0

[org/gnome/brasero/plugins/dvdcss]
priority=0

[org/gnome/brasero/plugins/file-checksum]
priority=0

[org/gnome/brasero/plugins/file-downloader]
priority=0

[org/gnome/brasero/plugins/genisoimage]
priority=0

[org/gnome/brasero/plugins/growisofs]
priority=0

[org/gnome/brasero/plugins/image-checksum]
priority=0

[org/gnome/brasero/plugins/libburn]
priority=0

[org/gnome/brasero/plugins/libisofs]
priority=0

[org/gnome/brasero/plugins/normalize]
priority=0

[org/gnome/brasero/plugins/readom]
priority=0

[org/gnome/brasero/plugins/transcode]
priority=0

[org/gnome/brasero/plugins/transcode2vob]
priority=0

[org/gnome/brasero/plugins/vcdimager]
priority=0

[org/gnome/brasero/plugins/wodim]
priority=0

[org/gnome/calculator]
accuracy=9
angle-units='degrees'
base=10
button-mode='basic'
number-format='automatic'
refresh-interval=604800
show-thousands=false
show-zeroes=false
source-currency=''
source-units='degree'
target-currency=''
target-units='radian'
window-position=(34, 28)
word-size=64

[org/gnome/calendar]
active-view='month'
weather-settings=(true, false, '', @mv nothing)
window-maximized=true
window-position=(0, 0)
window-size=(1366, 722)

[org/gnome/charmap]
font=@ms 'Courier New 20'
last-char=uint32 65

[org/gnome/charmap/window-state]
size=(768, 412)

[org/gnome/cheese]
burst-delay=1000
camera='HD WebCam: HD WebCam'
photo-x-resolution=640
photo-y-resolution=480
selected-effect='Без эффектов'
video-x-resolution=640
video-y-resolution=480

[org/gnome/control-center]
last-panel='info-overview'

[org/gnome/deja-dup]
backend=''
prompt-check=''

[org/gnome/deja-dup/file]
migrated=true
path='file:///'

[org/gnome/deja-dup/gcs]
folder='GriggoriiX64'

[org/gnome/deja-dup/gdrive]
folder='/deja-dup/GriggoriiX64'

[org/gnome/deja-dup/goa]
type=''

[org/gnome/deja-dup/openstack]
container='GriggoriiX64'

[org/gnome/deja-dup/rackspace]
container='GriggoriiX64'

[org/gnome/deja-dup/s3]
folder='GriggoriiX64'

[org/gnome/desktop/a11y]
always-show-universal-access-status=true

[org/gnome/desktop/a11y/applications]
screen-keyboard-enabled=false
screen-magnifier-enabled=false
screen-reader-enabled=false

[org/gnome/desktop/a11y/keyboard]
enable=false
mousekeys-enable=false
stickykeys-enable=false
togglekeys-enable=true

[org/gnome/desktop/a11y/magnifier]
brightness-blue=0.0
brightness-green=0.0
brightness-red=0.0
color-saturation=1.0
contrast-blue=0.0
contrast-green=0.0
contrast-red=0.0
invert-lightness=false
lens-mode=false
mag-factor=4.0
mouse-tracking='proportional'
show-cross-hairs=false

[org/gnome/desktop/a11y/mouse]
click-type-window-geometry=''
click-type-window-orientation='vertical'
click-type-window-style='both'
dwell-click-enabled=false
dwell-threshold=10
dwell-time=1.2
secondary-click-enabled=false
secondary-click-time=1.2

[org/gnome/desktop/app-folders]
folder-children=['Utilities', 'Sundry', 'YaST']

[org/gnome/desktop/app-folders/folders/Pop-Office]
apps=['libreoffice-calc.desktop', 'libreoffice-draw.desktop', 'libreoffice-impress.desktop', 'libreoffice-math.desktop', 'libreoffice-startcenter.desktop', 'libreoffice-writer.desktop']
name='Office.directory'
translate=true

[org/gnome/desktop/app-folders/folders/Pop-System]
apps=['gnome-language-selector.desktop', 'gnome-session-properties.desktop', 'gnome-system-monitor.desktop', 'im-config.desktop', 'nm-connection-editor.desktop', 'nvidia-settings.desktop', 'org.gnome.baobab.desktop', 'org.gnome.DiskUtility.desktop', 'org.gnome.PowerStats.desktop', 'org.gnome.seahorse.Application.desktop', 'software-properties-gnome.desktop', 'system76-driver.desktop', 'system76-firmware.desktop']
name='System.directory'
translate=true

[org/gnome/desktop/app-folders/folders/Pop-Utility]
apps=['com.github.donadigo.eddy.desktop', 'eog.desktop', 'gucharmap.desktop', 'org.gnome.Evince.desktop', 'org.gnome.FileRoller.desktop', 'org.gnome.font-viewer.desktop', 'org.gnome.Screenshot.desktop', 'org.gnome.Totem.desktop', 'popsicle.desktop', 'simple-scan.desktop', 'yelp.desktop']
name='X-GNOME-Utilities.directory'
translate=true

[org/gnome/desktop/app-folders/folders/Sundry]
apps=['alacarte.desktop', 'authconfig.desktop', 'ca.desrt.dconf-editor.desktop', 'fedora-release-notes.desktop', 'firewall-config.desktop', 'flash-player-properties.desktop', 'gconf-editor.desktop', 'gnome-abrt.desktop', 'gnome-power-statistics.desktop', 'ibus-setup-anthy.desktop', 'ibus-setup.desktop', 'ibus-setup-hangul.desktop', 'ibus-setup-libbopomofo.desktop', 'ibus-setup-libpinyin.desktop', 'ibus-setup-m17n.desktop', 'ibus-setup-typing-booster.desktop', 'im-chooser.desktop', 'itweb-settings.desktop', 'jhbuild.desktop', 'javaws.desktop', 'java-1.7.0-openjdk-jconsole.desktop', 'java-1.7.0-openjdk-policytool.desktop', 'log4j-chainsaw.desktop', 'log4j-logfactor5.desktop', 'nm-connection-editor.desktop', 'orca.desktop', 'setroubleshoot.desktop', 'system-config-date.desktop', 'system-config-firewall.desktop', 'system-config-keyboard.desktop', 'system-config-language.desktop', 'system-config-printer.desktop', 'system-config-users.desktop', 'vino-preferences.desktop', 'sync-monitor-calendar.desktop']
categories=['X-GNOME-Sundry']
name='X-GNOME-Sundry.directory'
translate=true

[org/gnome/desktop/app-folders/folders/Utilities]
apps=['org.gnome.baobab.desktop', 'deja-dup-preferences.desktop', 'eog.desktop', 'evince.desktop', 'org.gnome.FileRoller.desktop', 'gnome-calculator.desktop', 'gnome-dictionary.desktop', 'org.gnome.Characters.desktop', 'org.gnome.DiskUtility.desktop', 'org.gnome.font-viewer.desktop', 'org.gnome.Terminal.desktop', 'org.gnome.Screenshot.desktop', 'gnome-system-log.desktop', 'gnome-system-monitor.desktop', 'gnome-tweak-tool.desktop', 'gucharmap.desktop', 'seahorse.desktop', 'vinagre.desktop', 'yelp.desktop']
categories=['X-GNOME-Utilities']
name='X-GNOME-Utilities.directory'
translate=true

[org/gnome/desktop/app-folders/folders/YaST]
categories=['X-SuSE-YaST']
name='suse-yast.directory'
translate=true

[org/gnome/desktop/applications/terminal]
exec='tilix'

[org/gnome/desktop/background]
color-shading-type='solid'
picture-options='zoom'
primary-color='#2c001e'
secondary-color='#2c001e'
show-desktop-icons=true

[org/gnome/desktop/calendar]
show-weekdate=true

[org/gnome/desktop/file-sharing]
require-password='never'

[org/gnome/desktop/input-sources]
current=uint32 0
mru-sources=[('xkb', 'ru'), ('xkb', 'us')]
per-window=true
show-all-sources=false
sources=[('xkb', 'us'), ('xkb', 'ru')]
xkb-options=['terminate:ctrl_alt_bksp', 'grp:alt_shift_toggle', 'lv3:ralt_switch']

[org/gnome/desktop/interface]
buttons-have-icons=true
clock-format='24h'
clock-show-date=true
clock-show-seconds=true
clock-show-weekday=true
cursor-size=24
cursor-theme='breeze_cursors'
document-font-name='DejaVu Sans Mono Bold 11'
enable-animations=true
enable-hot-corners=true
font-antialiasing='grayscale'
font-hinting='slight'
font-name='Ubuntu 11'
font-rgba-order='rgb'
gtk-im-module='gtk-im-context-simple'
gtk-theme='Pop-dark-oomox-griggorii_theme_2020_V4'
icon-theme='oomox-griggorii'
locate-pointer=true
menus-have-icons=true
monospace-font-name='Ubuntu Mono 11'
scaling-factor=uint32 1
show-battery-percentage=true
text-scaling-factor=1.0
toolbar-style='both-horiz'
toolkit-acc=false
toolkit-accessibility=false

[org/gnome/desktop/lockdown]
disable-lock-screen=false
disable-log-out=false
disable-printing=false
disable-user-switching=false

[org/gnome/desktop/media-handling]
automount=false
automount-open=false
autorun-never=true
autorun-x-content-ignore=@as []
autorun-x-content-open-folder=['x-content/bootable-media']
autorun-x-content-start-app=['x-content/unix-software', 'x-content/bootable-media']

[org/gnome/desktop/notifications]
application-children=['gnome-control-center', 'org-gnome-tweaks', 'org-gnome-gedit', 'firefox', 'com-gexperts-tilix', 'mousepad', 'org-gnome-nautilus', 'org-gnome-terminal', 'org-gnome-fileroller', 'org-gnome-baobab', 'budgie-desktop-settings', 'nemo', 'brave-browser', 'jb-mission-control-jdk8', 'brave-browser-beta', 'thunar', 'gdebi', 'thunderbird', 'telegramdesktop', 'org-midori-browser-midori', 'vlc', 'xfce4-notifyd-config', 'nm-applet', 'com-obsproject-studio', 'yelp', 'gnome-power-panel', 'gnome-network-panel', 'displaycal', 'displaycal-scripting-client', 'stacer', 'chromium-browser', 'gnome-system-monitor', 'org-gnome-boxes', 'displaycal-vrml-to-x3d-converter', 'green-recorder', 'org-gnome-eog', 'io-github-celluloid-player-celluloid', 'update-manager', 'org-gnome-totem', 'org-freedesktop-problems-applet', 'org-gnome-software']
show-banners=true
show-in-lock-screen=true

[org/gnome/desktop/notifications/application/apport-gtk]
application-id='apport-gtk.desktop'

[org/gnome/desktop/notifications/application/bleachbit]
application-id='bleachbit.desktop'

[org/gnome/desktop/notifications/application/blueman-manager]
application-id='blueman-manager.desktop'

[org/gnome/desktop/notifications/application/brave-browser-beta]
application-id='brave-browser-beta.desktop'

[org/gnome/desktop/notifications/application/brave-browser]
application-id='brave-browser.desktop'

[org/gnome/desktop/notifications/application/budgie-desktop-settings]
application-id='budgie-desktop-settings.desktop'

[org/gnome/desktop/notifications/application/caja]
application-id='caja.desktop'

[org/gnome/desktop/notifications/application/chrome-nhbmpbdladcchdhkemlojfjdknjadhmh-default]
application-id='chrome-nhbmpbdladcchdhkemlojfjdknjadhmh-Default.desktop'

[org/gnome/desktop/notifications/application/chromium-browser]
application-id='chromium-browser.desktop'

[org/gnome/desktop/notifications/application/com-gexperts-tilix]
application-id='com.gexperts.Tilix.desktop'

[org/gnome/desktop/notifications/application/com-github-wwmm-pulseeffects]
application-id='com.github.wwmm.pulseeffects.desktop'

[org/gnome/desktop/notifications/application/com-obsproject-studio]
application-id='com.obsproject.Studio.desktop'

[org/gnome/desktop/notifications/application/displaycal-scripting-client]
application-id='displaycal-scripting-client.desktop'

[org/gnome/desktop/notifications/application/displaycal-vrml-to-x3d-converter]
application-id='displaycal-vrml-to-x3d-converter.desktop'

[org/gnome/desktop/notifications/application/displaycal]
application-id='displaycal.desktop'

[org/gnome/desktop/notifications/application/firefox]
application-id='firefox.desktop'

[org/gnome/desktop/notifications/application/gdebi]
application-id='gdebi.desktop'

[org/gnome/desktop/notifications/application/gnome-alsamixer]
application-id='gnome-alsamixer.desktop'

[org/gnome/desktop/notifications/application/gnome-control-center]
application-id='gnome-control-center.desktop'

[org/gnome/desktop/notifications/application/gnome-network-panel]
application-id='gnome-network-panel.desktop'

[org/gnome/desktop/notifications/application/gnome-power-panel]
application-id='gnome-power-panel.desktop'

[org/gnome/desktop/notifications/application/gnome-shell-extension-prefs]
application-id='gnome-shell-extension-prefs.desktop'

[org/gnome/desktop/notifications/application/gnome-system-monitor]
application-id='gnome-system-monitor.desktop'

[org/gnome/desktop/notifications/application/gparted]
application-id='gparted.desktop'

[org/gnome/desktop/notifications/application/green-recorder]
application-id='green-recorder.desktop'

[org/gnome/desktop/notifications/application/io-github-celluloid-player-celluloid]
application-id='io.github.celluloid_player.Celluloid.desktop'

[org/gnome/desktop/notifications/application/jb-mission-control-jdk8]
application-id='JB-mission-control-jdk8.desktop'

[org/gnome/desktop/notifications/application/mousepad]
application-id='mousepad.desktop'

[org/gnome/desktop/notifications/application/nemo]
application-id='nemo.desktop'

[org/gnome/desktop/notifications/application/nm-applet]
application-id='nm-applet.desktop'

[org/gnome/desktop/notifications/application/org-freedesktop-problems-applet]
application-id='org.freedesktop.problems.applet.desktop'

[org/gnome/desktop/notifications/application/org-gnome-baobab]
application-id='org.gnome.baobab.desktop'

[org/gnome/desktop/notifications/application/org-gnome-boxes]
application-id='org.gnome.Boxes.desktop'

[org/gnome/desktop/notifications/application/org-gnome-dejadup]
application-id='org.gnome.DejaDup.desktop'

[org/gnome/desktop/notifications/application/org-gnome-diskutility]
application-id='org.gnome.DiskUtility.desktop'

[org/gnome/desktop/notifications/application/org-gnome-eog]
application-id='org.gnome.eog.desktop'

[org/gnome/desktop/notifications/application/org-gnome-epiphany]
application-id='org.gnome.Epiphany.desktop'

[org/gnome/desktop/notifications/application/org-gnome-fileroller]
application-id='org.gnome.FileRoller.desktop'

[org/gnome/desktop/notifications/application/org-gnome-gedit]
application-id='org.gnome.gedit.desktop'

[org/gnome/desktop/notifications/application/org-gnome-nautilus]
application-id='org.gnome.Nautilus.desktop'
details-in-lock-screen=true

[org/gnome/desktop/notifications/application/org-gnome-software]
application-id='org.gnome.Software.desktop'

[org/gnome/desktop/notifications/application/org-gnome-terminal]
application-id='org.gnome.Terminal.desktop'

[org/gnome/desktop/notifications/application/org-gnome-totem]
application-id='org.gnome.Totem.desktop'

[org/gnome/desktop/notifications/application/org-gnome-tweaks]
application-id='org.gnome.tweaks.desktop'

[org/gnome/desktop/notifications/application/org-midori-browser-midori]
application-id='org.midori_browser.Midori.desktop'

[org/gnome/desktop/notifications/application/org-remmina-remmina]
application-id='org.remmina.Remmina.desktop'

[org/gnome/desktop/notifications/application/rhythmbox]
application-id='rhythmbox.desktop'

[org/gnome/desktop/notifications/application/rstudio]
application-id='rstudio.desktop'

[org/gnome/desktop/notifications/application/stacer]
application-id='stacer.desktop'

[org/gnome/desktop/notifications/application/telegramdesktop]
application-id='telegramdesktop.desktop'

[org/gnome/desktop/notifications/application/thunar]
application-id='Thunar.desktop'

[org/gnome/desktop/notifications/application/thunderbird]
application-id='thunderbird.desktop'

[org/gnome/desktop/notifications/application/update-manager]
application-id='update-manager.desktop'

[org/gnome/desktop/notifications/application/vlc]
application-id='vlc.desktop'

[org/gnome/desktop/notifications/application/xfce-display-settings]
application-id='xfce-display-settings.desktop'

[org/gnome/desktop/notifications/application/xfce4-notifyd-config]
application-id='xfce4-notifyd-config.desktop'

[org/gnome/desktop/notifications/application/yelp]
application-id='yelp.desktop'

[org/gnome/desktop/peripherals/keyboard]
numlock-state=true

[org/gnome/desktop/peripherals/mouse]
left-handed=false

[org/gnome/desktop/peripherals/touchpad]
click-method='fingers'
disable-while-typing=true
tap-to-click=true
two-finger-scrolling-enabled=true

[org/gnome/desktop/privacy]
disable-microphone=false
recent-files-max-age=0
remember-recent-files=false
remove-old-temp-files=false
remove-old-trash-files=false
report-technical-problems=false

[org/gnome/desktop/screensaver]
color-shading-type='solid'
embedded-keyboard-command='onboard --xid'
embedded-keyboard-enabled=true
idle-activation-enabled=false
lock-delay=uint32 0
lock-enabled=false
picture-options='zoom'
primary-color='#2c001e'
secondary-color='#2c001e'

[org/gnome/desktop/search-providers]
disabled=['seahorse.desktop']
sort-order=['org.gnome.Contacts.desktop', 'org.gnome.Documents.desktop', 'org.gnome.Nautilus.desktop']

[org/gnome/desktop/session]
idle-delay=uint32 0

[org/gnome/desktop/sound]
allow-volume-above-100-percent=true
event-sounds=true
theme-name='freedesktop'

[org/gnome/desktop/wm/keybindings]
activate-window-menu=['<Alt>space']
begin-move=['<Alt>F7']
begin-resize=['<Alt>F8']
close=['<Alt>F4']
lower=['disabled']
maximize=['<Super>Up']
maximize-horizontally=['<Shift>KP_Multiply']
maximize-vertically=['<Shift>KP_Divide']
minimize=['<Super>h']
move-to-corner-ne=['<Control><Alt>KP_Prior']
move-to-corner-nw=['<Control><Alt>KP_Home']
move-to-corner-se=['<Control><Alt>KP_Next']
move-to-corner-sw=['<Control><Alt>KP_End']
move-to-side-e=['<Control><Alt>KP_Right']
move-to-side-n=['<Control><Alt>KP_Up']
move-to-side-s=['<Control><Alt>KP_Down']
move-to-side-w=['<Control><Alt>KP_Left']
move-to-workspace-1=['<Shift><Super>KP_1']
move-to-workspace-10=['disabled']
move-to-workspace-11=['disabled']
move-to-workspace-12=['disabled']
move-to-workspace-2=['<Shift><Super>KP_2']
move-to-workspace-3=['<Shift><Super>KP_3']
move-to-workspace-4=['<Shift><Super>KP_4']
move-to-workspace-5=['disabled']
move-to-workspace-6=['disabled']
move-to-workspace-7=['disabled']
move-to-workspace-8=['disabled']
move-to-workspace-9=['disabled']
move-to-workspace-down=['<Shift><Super>Next']
move-to-workspace-left=['<Shift><Control><Alt>Left']
move-to-workspace-right=['<Shift><Control><Alt>Right']
move-to-workspace-up=['<Shift><Super>Prior']
panel-main-menu=['<Alt>F1']
panel-run-dialog=['<Alt>F2']
raise=['disabled']
show-desktop=['<Shift><Super>KP_Decimal']
switch-applications=['']
switch-applications-backward=['']
switch-group=['']
switch-group-backward=['']
switch-input-source=['<Shift>Alt_L']
switch-input-source-backward=['<Super>space']
switch-to-workspace-1=['<Super>1']
switch-to-workspace-10=['disabled']
switch-to-workspace-11=['disabled']
switch-to-workspace-12=['disabled']
switch-to-workspace-2=['<Super>2']
switch-to-workspace-3=['<Super>3']
switch-to-workspace-4=['<Super>4']
switch-to-workspace-5=['disabled']
switch-to-workspace-6=['disabled']
switch-to-workspace-7=['disabled']
switch-to-workspace-8=['disabled']
switch-to-workspace-9=['disabled']
switch-to-workspace-down=['<Super>Next']
switch-to-workspace-left=['disabled']
switch-to-workspace-right=['disabled']
switch-to-workspace-up=['<Super>Prior']
switch-windows=['disabled']
switch-windows-backward=['disabled']
toggle-fullscreen=['disabled']
toggle-maximized=['<Alt>F10']
toggle-on-all-workspaces=['<Super>Tab']
toggle-shaded=['disabled']
unmaximize=['<Super>Down']

[org/gnome/desktop/wm/preferences]
action-middle-click-titlebar='none'
auto-raise=true
auto-raise-delay=1000
button-layout='appmenu:minimize,maximize,close'
focus-mode='click'
mouse-button-modifier='<Super>'
num-workspaces=4
resize-with-right-button=false
titlebar-font='Ubuntu Bold 11'
visual-bell=false
visual-bell-type='frame-flash'
workspace-names=['Рабочее место 1', 'Рабочее место 2', '', '', '']

[org/gnome/devhelp/state/main/contents]
group-books-by-language=false

[org/gnome/eog/plugins]
active-plugins=['fullscreen']

[org/gnome/eog/view]
background-color='rgb(0,0,0)'
use-background-color=true

[org/gnome/epiphany]
automatic-downloads=false
default-search-engine=''
search-engines=[('', '', '!g')]

[org/gnome/epiphany/state]
is-maximized=false
window-position=(258, 150)
window-size=(685, 474)

[org/gnome/epiphany/sync]
sync-device-name='GriggoriiX64'

[org/gnome/epiphany/web]
remember-passwords=false

[org/gnome/evince]
document-directory=@ms ''

[org/gnome/evince/default]
window-ratio=(0.40418836805555552, 0.41859567901234568)

[org/gnome/evolution-data-server]
migrated=true
network-monitor-gio-name=''
oauth2-google-client-id=''
oauth2-google-client-secret=''

[org/gnome/evolution]
default-calendar='system-calendar'
default-task-list='system-task-list'
version='3.32.1'

[org/gnome/evolution/addressbook]
vpane-position=354

[org/gnome/evolution/bogofilter]
command=''
utf8-for-spam-filter=true

[org/gnome/evolution/calendar]
allow-direct-summary-edit=false
confirm-purge=true
date-navigator-pane-position=159
hpane-position=301
memo-vpane-position=329
prefer-new-item=''
primary-calendar='system-calendar'
primary-memos='system-memo-list'
primary-tasks='system-task-list'
recur-events-italic=false
tag-vpane-position=0.016853932584269704
task-vpane-position=329
time-divisions=30
use-24hour-format=true
week-start-day-name='monday'
work-day-friday=true
work-day-monday=true
work-day-saturday=false
work-day-sunday=false
work-day-thursday=true
work-day-tuesday=true
work-day-wednesday=true

[org/gnome/evolution/mail]
browser-close-on-reply-policy='ask'
forward-style-name='attached'
headers=['<?xml version="1.0"?>\n<header name="From" enabled=""/>\n', '<?xml version="1.0"?>\n<header name="Reply-To" enabled=""/>\n', '<?xml version="1.0"?>\n<header name="To" enabled=""/>\n', '<?xml version="1.0"?>\n<header name="Cc" enabled=""/>\n', '<?xml version="1.0"?>\n<header name="Bcc" enabled=""/>\n', '<?xml version="1.0"?>\n<header name="Subject" enabled=""/>\n', '<?xml version="1.0"?>\n<header name="Date" enabled=""/>\n', '<?xml version="1.0"?>\n<header name="Newsgroups" enabled=""/>\n', '<?xml version="1.0"?>\n<header name="Face" enabled=""/>\n', '<?xml version="1.0"?>\n<header name="x-evolution-mailer"/>\n']
image-loading-policy='never'
junk-check-custom-header=true
junk-check-incoming=true
junk-empty-on-exit-days=0
junk-lookup-addressbook=false
paned-size=1073033
reply-style-name='quoted'
search-gravatar-for-photo=false
show-headers=[('From', true), ('Reply-To', true), ('To', true), ('Cc', true), ('Bcc', true), ('Subject', true), ('Date', true), ('Newsgroups', true), ('Face', true), ('x-evolution-mailer', false)]
to-do-bar-width=1150000
trash-empty-on-exit-days=0

[org/gnome/evolution/shell]
attachment-view=0
buttons-visible=true
default-component-id='calendar'
folder-bar-width=231
menubar-visible=true
sidebar-visible=true
statusbar-visible=true
toolbar-visible=true

[org/gnome/evolution/shell/window]
height=577
maximized=true
width=1024
x=0
y=0

[org/gnome/file-roller/dialogs/add]
current-folder=''
exclude-files=''
exclude-folders=''
include-files='*'
no-symlinks=true
selected-files=['']
update=false

[org/gnome/file-roller/dialogs/extract]
recreate-folders=true
skip-newer=false

[org/gnome/file-roller/dialogs/new]
default-extension='.zip'
encrypt-header=false
volume-size=0

[org/gnome/file-roller/file-selector]
show-hidden=false
sidebar-size=168
window-size=(840, 721)

[org/gnome/file-roller/listing]
list-mode='as-folder'
name-column-width=285
show-path=false
sort-method='name'
sort-type='ascending'

[org/gnome/file-roller/ui]
sidebar-width=200
view-sidebar=true
window-height=472
window-width=837

[org/gnome/gedit/plugins]
active-plugins=['docinfo', 'externaltools', 'terminal', 'commander', 'snippets', 'time', 'modelines', 'quickopen', 'git', 'findinfiles', 'joinlines', 'colorpicker', 'smartspaces', 'textsize', 'filebrowser', 'bracketcompletion', 'translate', 'spell', 'charmap', 'colorschemer', 'codecomment', 'quickhighlight', 'wordcompletion', 'sort', 'multiedit', 'pythonconsole', 'synctex']

[org/gnome/gedit/plugins/filebrowser]
root='file:///'
tree-view=true
virtual-root=''

[org/gnome/gedit/preferences/editor]
background-pattern='none'
bracket-matching=true
display-line-numbers=false
display-right-margin=false
editor-font='Sans 12'
highlight-current-line=false
scheme='tango'
use-default-font=false
wrap-last-split-mode='word'
wrap-mode='word'

[org/gnome/gedit/preferences/encodings]
candidate-encodings=['UTF-8', 'ISO-8859-15', 'UTF-16', 'WINDOWS-1250', 'WINDOWS-1251']

[org/gnome/gedit/preferences/ui]
bottom-panel-visible=true
show-tabs-mode='auto'
side-panel-visible=true
statusbar-visible=true

[org/gnome/gedit/state/file-chooser]
open-recent=false

[org/gnome/gedit/state/history-entry]
replace-with-entry=['']
search-for-entry=['']

[org/gnome/gedit/state/window]
bottom-panel-active-page='GeditPythonConsolePanel'
bottom-panel-size=21
side-panel-active-page='GeditFileBrowserPanel'
side-panel-size=289
size=(965, 525)
state=87168

[org/gnome/gitg/preferences/commit/message]
enable-spell-checking=true
spell-checking-language=''

[org/gnome/gitg/preferences/history]
default-selection='current-branch'
reference-sort-order='last-activity'

[org/gnome/gitg/preferences/interface]
enable-monitoring=true
orientation='vertical'

[org/gnome/gitg/preferences/main]
clone-directory=''

[org/gnome/gitg/state/commit]
paned-sidebar-position=561
sign-off=true

[org/gnome/gitg/state/history]
paned-panels-position=399
paned-sidebar-position=200

[org/gnome/gitg/state/window]
size=(1150, 633)
state=128

[org/gnome/gnome-panel/layout]
object-id-list=['menu-bar', 'indicators', 'show-destkop', 'window-list', 'workspace-switcher']
toplevel-id-list=['top-panel', 'bottom-panel']

[org/gnome/gnome-panel/layout/objects/indicators]
object-iid='IndicatorAppletCompleteFactory::IndicatorAppletComplete'
pack-index=0
pack-type='end'
toplevel-id='top-panel'

[org/gnome/gnome-panel/layout/objects/menu-bar]
object-iid='org.gnome.gnome-panel.menu::menu-bar'
pack-index=0
toplevel-id='top-panel'

[org/gnome/gnome-panel/layout/objects/show-destkop]
object-iid='org.gnome.gnome-panel.wncklet::show-desktop'
pack-index=0
toplevel-id='bottom-panel'

[org/gnome/gnome-panel/layout/objects/window-list]
object-iid='org.gnome.gnome-panel.wncklet::window-list'
pack-index=1
toplevel-id='bottom-panel'

[org/gnome/gnome-panel/layout/objects/workspace-switcher]
object-iid='org.gnome.gnome-panel.wncklet::workspace-switcher'
pack-index=0
pack-type='end'
toplevel-id='bottom-panel'

[org/gnome/gnome-panel/layout/toplevels/bottom-panel]
animation-speed='fast'
auto-hide=false
auto-hide-size=1
enable-buttons=false
expand=true
hide-delay=300
monitor=0
orientation='bottom'
size=24
unhide-delay=100
x=0
x-centered=false
x-right=-1
y=744
y-bottom=0
y-centered=false

[org/gnome/gnome-panel/layout/toplevels/top-panel]
animation-speed='fast'
auto-hide=false
auto-hide-size=1
enable-buttons=false
expand=true
hide-delay=300
monitor=0
orientation='top'
size=24
unhide-delay=100
x=0
x-centered=false
x-right=-1
y=0
y-bottom=-1
y-centered=false

[org/gnome/gnome-screenshot]
border-effect='none'
delay=1
include-border=true
include-pointer=false
last-save-directory=''

[org/gnome/gnome-system-log]
fontsize=11
height=765
logfile='/var/log/Xorg.0.log'
logfiles=['/var/log/Xorg.0.log']
width=668

[org/gnome/gnome-system-monitor]
cpu-stacked-area-chart=true
current-tab='resources'
disks-interval=5000
graph-update-interval=1000
maximized=false
network-in-bits=true
show-all-fs=true
show-dependencies=false
show-whose-processes='user'
update-interval=3000
window-state=(818, 497, 34, 28)

[org/gnome/gnome-system-monitor/disktreenew]
col-0-visible=true
col-0-width=127
col-1-visible=true
col-1-width=244
col-2-visible=true
col-2-width=94
col-4-visible=true
col-4-width=0
col-6-visible=true
col-6-width=0
columns-order=[0, 1, 2, 3, 4, 5, 6]
sort-col=2
sort-order=0

[org/gnome/gnome-system-monitor/memmapstree]
sort-col=0
sort-order=0

[org/gnome/gnome-system-monitor/proctree]
col-0-visible=true
col-0-width=322
col-10-visible=true
col-11-visible=true
col-11-width=0
col-14-visible=true
col-16-visible=true
col-17-visible=true
col-18-visible=true
col-19-visible=true
col-2-visible=true
col-2-width=37
col-20-visible=true
col-21-visible=true
col-21-width=0
col-3-visible=true
col-4-visible=true
col-6-visible=true
col-6-width=0
col-9-visible=true
columns-order=[0, 1, 2, 3, 4, 6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26]
sort-col=15
sort-order=0

[org/gnome/gnote]
main-window-maximized=false
search-window-height=400
search-window-splitter-pos=150
search-window-width=723
start-note='note://gnote/b0f59207-cdb1-407c-a97b-3648db7a9335'

[org/gnome/gthumb/browser]
fullscreen-sidebar='hidden'
fullscreen-thumbnails-visible=false
go-to-last-location=true
maximized=false
properties-visible=false
sidebar-sections=['GthFileProperties:expanded', 'GthFileComment:expanded', 'GthFileDetails:expanded', 'GthImageHistogram:expanded']
sidebar-visible=true
sort-inverse=false
sort-type='file::mtime'
startup-current-file=''
startup-location=''
statusbar-visible=true
thumbnail-list-size=0
thumbnail-list-visible=true
use-startup-location=false
viewer-sidebar='hidden'

[org/gnome/gthumb/crop]
aspect-ratio='none'
aspect-ratio-height=1
aspect-ratio-invert=false
aspect-ratio-width=1
bind-dimensions=false
bind-factor=8
grid-type='thirds'

[org/gnome/gthumb/data-migration]
catalogs-2-10=true

[org/gnome/gthumb/general]
active-extensions=['23hq', 'bookmarks', 'burn_disc', 'catalogs', 'change_date', 'comments', 'contact_sheet', 'convert_format', 'desktop_background', 'edit_metadata', 'exiv2_tools', 'facebook', 'file_manager', 'find_duplicates', 'flicker', 'gstreamer_tools', 'gstreamer_utils', 'image_print', 'image_rotation', 'importer', 'jpeg_utils', 'list_tools', 'oauth', 'photo_importer', 'photobucket', 'picasaweb', 'raw_files', 'red_eye_removal', 'rename_series', 'resize_images', 'search', 'selections', 'slideshow', 'webalbums']
store-metadata-in-files=true

[org/gnome/gthumb/image-print]
font-name='Sans 12'
footer=''
footer-font-name='Sans 8'
header=''
header-font-name='Sans Bold 12'
n-columns=1
n-rows=1
unit='pixels'

[org/gnome/gthumb/image-viewer]
histogram-scale='linear'

[org/gnome/gthumb/photo-importer]
delete-from-device=false

[org/gnome/gthumb/pixbuf-savers/jpeg]
default-ext='jpeg'
optimize=true
progressive=false
quality=85
smoothing=0

[org/gnome/gthumb/pixbuf-savers/png]
compression-level=6

[org/gnome/gthumb/pixbuf-savers/tga]
rle-compression=true

[org/gnome/gthumb/pixbuf-savers/tiff]
compression='deflate'
default-ext='tiff'
horizontal-resolution=72
vertical-resolution=72

[org/gnome/gthumb/pixbuf-savers/webp]
lossless=false
method=4
quality=75

[org/gnome/gthumb/resize]
aspect-ratio='239x100'
aspect-ratio-height=100
aspect-ratio-invert=true
aspect-ratio-width=239
height=74.479164123535156
high-quality=true
unit='percentage'
width=100.0

[org/gnome/libgnomekbd/desktop]
load-extra-items=true

[org/gnome/libgnomekbd/keyboard]
layouts=['us', 'ru']
options=['grp\tgrp:alt_shift_toggle']

[org/gnome/libgnomekbd/preview]
height=459
width=1049
x=170
y=96

[org/gnome/logs]
ignore-warning=true

[org/gnome/mahjongg]
window-height=600
window-is-maximized=false
window-width=900

[org/gnome/maps]
last-viewed-location=[76.168235701644321, -0.070145112634972126, -44.242737293243408, -164.12554979324341]
map-type='MapsStreetSource'
transportation-type='pedestrian'
window-maximized=false
window-position=[34, 28]
window-size=[787, 572]

[org/gnome/meld/window-state]
height=400
is-fullscreen=false
is-maximized=false
width=584

[org/gnome/metacity]
compositing-manager=false

[org/gnome/mines]
use-animations=true
window-height=428
window-is-maximized=false
window-width=600

[org/gnome/mutter]
attach-modal-dialogs=true
center-new-windows=false
dynamic-workspaces=true
edge-tiling=true
experimental-features=['x11-randr-fractional-scaling', 'scale-monitor-framebuffer']
workspaces-only-on-primary=true

[org/gnome/nautilus/compression]
default-compression-format='zip'

[org/gnome/nautilus/icon-view]
default-zoom-level='standard'

[org/gnome/nautilus/list-view]
use-tree-view=true

[org/gnome/nautilus/preferences]
click-policy='single'
default-folder-viewer='icon-view'
executable-text-activation='ask'
search-filter-time-type='last_modified'
search-view='list-view'
show-create-link=true
show-delete-permanently=true

[org/gnome/nautilus/window-state]
initial-size=(877, 530)
maximized=false
sidebar-width=190

[org/gnome/nm-applet]
disable-connected-notifications=false
disable-disconnected-notifications=false
disable-vpn-notifications=false
disable-wifi-create=true
suppress-wireless-networks-available=false

[org/gnome/orca]
active-profile=['Default', 'default']

[org/gnome/packagekit]
search-mode='details'

[org/gnome/photos]
window-maximized=false
window-position=[132, 60]
window-size=[960, 600]

[org/gnome/power-manager]
info-history-time=604800
info-history-type='charge'
info-last-device='/org/freedesktop/UPower/devices/line_power_ACAD'
info-page-number=0
info-stats-type='discharge-accuracy'

[org/gnome/rhythmbox]
position=(34, 28)
size=(915, 542)
statusbar-visible=false

[org/gnome/rhythmbox/library]
layout-filename='%tN - %tt'
layout-path='%aa/%at'

[org/gnome/rhythmbox/library/encoding]
media-type='audio/x-vorbis'

[org/gnome/rhythmbox/library/source]
show-browser=true

[org/gnome/rhythmbox/player]
volume=1.0

[org/gnome/rhythmbox/plugins]
active-plugins=['mpris', 'dbus-media-server', 'mmkeys', 'notification', 'audiocd', 'power-manager', 'generic-player', 'cd-recorder', 'audioscrobbler', 'ipod', 'android', 'rb', 'alternative-toolbar', 'artsearch', 'iradio', 'daap', 'mtpdevice']
seen-plugins=['mpris', 'dbus-media-server', 'notification', 'cd-recorder', 'pythonconsole', 'audioscrobbler', 'rblirc', 'ipod', 'rb', 'alternative-toolbar', 'rbzeitgeist', 'soundcloud', 'replaygain', 'magnatune', 'im-status', 'sendto', 'webremote', 'artsearch', 'lyrics', 'grilo', 'daap', 'mtpdevice', 'fmradio', 'listenbrainz']

[org/gnome/rhythmbox/plugins/alternative_toolbar]
show-source-toolbar=false

[org/gnome/rhythmbox/plugins/audioscrobbler/Last.fm]
scrobbling-enabled=true

[org/gnome/rhythmbox/plugins/audioscrobbler/Libre.fm]
scrobbling-enabled=true

[org/gnome/rhythmbox/plugins/iradio]
initial-stations-loaded=true

[org/gnome/rhythmbox/plugins/iradio/source]
show-browser=true

[org/gnome/rhythmbox/podcast]
download-location=''

[org/gnome/rhythmbox/podcast/source]
show-browser=true

[org/gnome/rhythmbox/rhythmdb]
locations=['']

[org/gnome/rhythmbox/sources]
visible-columns=['post-time', 'duration', 'track-number', 'album', 'genre', 'artist']

[org/gnome/settings-daemon/peripherals/keyboard]
numlock-state='off'

[org/gnome/settings-daemon/peripherals/mouse]
locate-pointer=false

[org/gnome/settings-daemon/peripherals/touchscreen]
orientation-lock=false

[org/gnome/settings-daemon/plugins/color]
night-light-enabled=false
night-light-schedule-automatic=true
night-light-temperature=uint32 5700

[org/gnome/settings-daemon/plugins/media-keys]
area-screenshot=['<Shift>F11']
area-screenshot-clip=['<Shift>F8']
calculator=['<Shift>F3']
control-center=['<Shift>F6']
custom-keybindings=['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-show-desktop/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-show-files-test/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/']
decrease-text-size=['<Shift>KP_Subtract']
email=['<Shift>F4']
help=['F1']
home=['<Primary><Alt>Home']
increase-text-size=['<Shift>KP_Add']
max-screencast-length=uint32 1000100010
media=['KP_Insert']
mic-mute=['<Alt>m']
next=['<Shift>KP_6']
pause=['<Shift>KP_8']
play=['<Primary>p']
previous=['<Shift>KP_4']
screencast=['<Primary>Print']
screenshot=['<Shift>F7']
screenshot-clip=['<Shift>F10']
search=['<Shift>F5']
stop=['<Shift>KP_2']
terminal=['<Control><Alt>t']
volume-down=['<Primary>KP_Subtract']
volume-mute=['<Primary>m']
volume-up=['<Primary>KP_Add']
window-screenshot=['<Shift>F12']
window-screenshot-clip=['<Shift>F9']
www=['<Shift>F2']

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-screenshot-area-clipboard]
binding='<Shift><Ctrl>Print'
command='gnome-screenshot -a -c'
name='Copy a screenshot of an area to clipboard'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-screenshot-area]
binding='<Shift>Print'
command='gnome-screenshot -a'
name='Save a screenshot of an area to Pictures'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-screenshot-window-clipboard]
binding='<Ctrl>Print'
command='gnome-screenshot -w -c'
name='Copy a screenshot of a window to clipboard'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-screenshot-window]
binding='<Alt>Print'
command='gnome-screenshot -w'
name='Save a screenshot of a window to Pictures'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-screenshot]
binding='Print'
command='gnome-screenshot'
name='Save a screenshot to Pictures'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-show-desktop]
binding='<Super>d'
command='/usr/share/budgie-desktop/showdesktop/showdesktop'
name='Hide/Show desktop'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-show-files-test]
binding='<Super>e'
command='nemo'
name='Show File Browser'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-tilix-quake1]
binding='<Alt>q'
command='tilix --quake'
name='Show/Hide Tilix Quake Console 1'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-tilix-quake2]
binding='F12'
command='tilix --quake'
name='Show/Hide Tilix Quake Console 2'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-visualspace-left]
binding='<Control><Alt>Left'
command='/usr/share/budgie-desktop/visualspace/visualspace prev'
name='Move to Workspace left'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-visualspace-right]
binding='<Control><Alt>Right'
command='/usr/share/budgie-desktop/visualspace/visualspace next'
name='Move to Workspace right'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0]
binding='<Primary><Alt>t'
command='tilix'
name='Терминал tilix'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1]
binding='<Super>t'
command='/usr/bin/tilix --quake'
name='tilix-quake'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_bottomhalf]
binding='<Primary><Alt>KP_2'
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 1 2 0 1'
name='Shuffler-tiling bottomhalf'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_bottomleft]
binding='<Primary><Alt>KP_1'
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 2 2 0 1'
name='Shuffler-tiling bottomleft'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_bottomleft_noKP]
binding='<Super>3'
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 2 2 0 1'
name='Shuffler-tiling bottomleft mainkeyboard'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_bottomright]
binding='<Primary><Alt>KP_3'
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 2 2 1 1'
name='Shuffler-tiling bottomright'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_bottomright_noKP]
binding='<Super>4'
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 2 2 1 1'
name='Shuffler-tiling bottomright mainkeyboard'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_lefthalf]
binding='<Primary><Alt>KP_4'
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 2 1 0 0'
name='Shuffler-tiling lefthalf'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_max]
binding='<Primary><Alt>KP_5'
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 1 1 0 0'
name='Shuffler-tiling maximized'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_righthalf]
binding='<Primary><Alt>KP_6'
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 2 1 1 0'
name='Shuffler-tiling righthalf'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_tophalf]
binding='<Primary><Alt>KP_8'
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 1 2 0 0'
name='Shuffler-tiling tophalf'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_topleft]
binding='<Primary><Alt>KP_7'
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 2 2 0 0'
name='Shuffler-tiling topleft'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_topleft_noKP]
binding='<Super>1'
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 2 2 0 0'
name='Shuffler-tiling topleft mainkeyboard'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_topright]
binding='<Primary><Alt>KP_9'
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 2 2 1 0'
name='Shuffler-tiling topright'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_topright_noKP]
binding='<Super>2'
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 2 2 1 0'
name='Shuffler-tiling topright mainkeyboard'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/windowshuffler]
binding='<Super>s'
command='/usr/share/budgie-desktop/windowshuffler/matrix_wrapper'
name='Toggle Window Shuffler'

[org/gnome/settings-daemon/plugins/orientation]
active=true

[org/gnome/settings-daemon/plugins/power]
active=false
idle-dim=true
sleep-inactive-ac-timeout=3600
sleep-inactive-ac-type='nothing'
sleep-inactive-battery-timeout=6000
sleep-inactive-battery-type='suspend'

[org/gnome/settings-daemon/plugins/xsettings]
antialiasing='grayscale'
hinting='slight'
overrides={'Gtk/ShellShowsAppMenu': <0>, 'Gtk/DecorationLayout': <'menu:minimize,maximize,close'>}
rgba-order='rgb'
srgba-order='srgb'

[org/gnome/shell]
enabled-extensions=['apps-menu@gnome-shell-extensions.gcampax.github.com', 'auto-ovpn@yahoo.com', 'compiz-alike-magic-lamp-effect@hermes83.github.com', 'CoverflowAltTab@palatis.blogspot.com', 'hidetopbar@mathieu.bidon.ca', 'horizontal-workspaces@gnome-shell-extensions.gcampax.github.com', 'drive-menu@gnome-shell-extensions.gcampax.github.com', 'screenshot-window-sizer@gnome-shell-extensions.gcampax.github.com', 'ubuntu-dock@ubuntu.com', 'user-theme@gnome-shell-extensions.gcampax.github.com', 'system-monitor@paradoxxx.zero.gmail.com', 'TilixDropdown@ivkuzev@gmail.com', 'workspace-indicator@gnome-shell-extensions.gcampax.github.com', 'printers@linux-man.org', 'popthemetoggle@kylecorry31.github.io', 'places-menu@gnome-shell-extensions.gcampax.github.com', 'openweather-extension@jenslody.de']
favorite-apps=['org.gnome.Screenshot.desktop', 'ubiquity.desktop', 'nemo.desktop', 'org.gnome.Nautilus.desktop', 'com.github.wwmm.pulseeffects.desktop', 'gnome-control-center.desktop', 'com.gexperts.Tilix.desktop', 'gnome-system-monitor.desktop', 'com.obsproject.Studio.desktop', 'org.gnome.tweaks.desktop', 'org.gnome.DiskUtility.desktop', 'nvidia-settings.desktop', 'ca.desrt.dconf-editor.desktop', 'telegramdesktop.desktop', 'chromium-browser.desktop', 'green-recorder.desktop', 'update-manager.desktop']
had-bluetooth-devices-setup=true
welcome-dialog-last-shown-version='40.0'

[org/gnome/shell/extensions/EasyScreenCast]
active-custom-gsp=false
file-container=0
file-resolution-height=480
file-resolution-width=640
pipeline='vp9enc min_quantizer=0 max_quantizer=5 cpu-used=3 deadline=1000000 threads=%T ! queue max-size-buffers=0 max-size-time=0 max-size-bytes=0 ! webmmux'
quality-webcam=''

[org/gnome/shell/extensions/PulseAudioShortcuts]
label-menu='PulseAudio Shortcuts'

[org/gnome/shell/extensions/auto-ovpn]
compact-mode=false
wifi-mode=false

[org/gnome/shell/extensions/coverflowalttab]
elastic-mode=true
switcher-style='Coverflow'

[org/gnome/shell/extensions/dash-to-dock]
apply-custom-theme=true
background-color='#02000e'
background-opacity=0.69999999999999996
custom-background-color=true
custom-theme-shrink=true
customize-alphas=true
dash-max-icon-size=34
dock-fixed=false
dock-position='LEFT'
extend-height=false
height-fraction=0.90000000000000002
icon-size-fixed=false
multi-monitor=true
preferred-monitor=0
running-indicator-dominant-color=true
show-trash=true
transparency-mode='FIXED'
unity-backlit-items=true

[org/gnome/shell/extensions/dash-to-panel]
appicon-margin=0
appicon-padding=4
dot-color-1='#5294e2'
dot-color-2='#5294e2'
dot-color-3='#5294e2'
dot-color-4='#5294e2'
dot-color-dominant=true
dot-color-override=false
dot-color-unfocused-1='#5294e2'
dot-color-unfocused-2='#5294e2'
dot-color-unfocused-3='#5294e2'
dot-color-unfocused-4='#5294e2'
dot-color-unfocused-different=true
dot-position='TOP'
dot-style-focused='DASHES'
dot-style-unfocused='DASHES'
focus-highlight-color='#eeeeee'
focus-highlight-dominant=true
force-check-update=true
hot-keys=false
hotkeys-overlay-combo='TEMPORARILY'
intellihide=true
intellihide-hide-from-windows=true
intellihide-show-in-fullscreen=true
intellihide-use-pressure=false
location-clock='STATUSLEFT'
panel-position='TOP'
panel-size=47
secondarymenu-contains-showdetails=false
show-running-apps=true
stockgs-force-hotcorner=false
stockgs-keep-dash=true
stockgs-panelbtn-click-only=false
taskbar-position='LEFTPANEL'
trans-bg-color='#000000'
trans-use-custom-bg=true
trans-use-custom-gradient=false
trans-use-custom-opacity=false

[org/gnome/shell/extensions/desktop-icons]
computer-icon-visible=true
icon-size='small'
show-computer-visible=true
show-home=true
show-trash=true

[org/gnome/shell/extensions/ding]
icon-size='small'

[org/gnome/shell/extensions/gnomenu]
apps-grid-icon-size=48
apps-grid-label-width=64
apps-list-icon-size=24
disable-activities-hotcorner=false
disable-panel-menu-hotspot=false
disable-panel-menu-keyboard=true
hide-panel-apps=true
hide-panel-menu=false
hide-panel-view=true
menu-layout='Normal'
panel-apps-label-text=['Приложения']
panel-menu-label-text=['Меню']
panel-view-label-text=['Обзор']
shortcuts-icon-size=32
startup-view-mode='Grid'
use-panel-menu-icon=true
use-panel-view-icon=false

[org/gnome/shell/extensions/hidetopbar]
enable-active-window=true
enable-intellihide=true
hot-corner=false
mouse-sensitive=true
mouse-sensitive-fullscreen-window=false
mouse-triggers-overview=false
shortcut-toggles=true

[org/gnome/shell/extensions/ncom/github/hermes83/compiz-alike-magic-lamp-effect]
duration=765.0
effect='sine'
x-tiles=19.0
y-tiles=50.0

[org/gnome/shell/extensions/onboard-indicator]
schema-version='1.0'

[org/gnome/shell/extensions/openweather]
days-forecast=2
decimal-places=1
geolocation-provider='openstreetmaps'
position-in-panel='left'
pressure-unit='inHg'
show-comment-in-forecast=true
show-text-in-panel=true
translate-condition=true
unit='fahrenheit'
use-default-owm-key=true
use-symbolic-icons=true
weather-provider='openweathermap'
wind-direction=true
wind-speed-unit='mph'

[org/gnome/shell/extensions/printers]
connect-to='system-config-printer'
job-number=true
show-error=true
show-icon='When printers exist'
show-jobs=true

[org/gnome/shell/extensions/system-monitor]
background='#3e0076ff'
battery-display=false
battery-graph-width=5
battery-show-menu=true
battery-show-text=true
center-display=false
compact-display=true
cpu-display=false
cpu-graph-width=5
cpu-individual-cores=true
cpu-show-menu=true
cpu-show-text=false
disk-graph-width=5
disk-show-menu=true
disk-show-text=false
fan-graph-width=5
fan-show-text=false
freq-graph-width=5
freq-show-menu=true
gpu-display=false
gpu-graph-width=5
gpu-show-menu=true
gpu-show-text=false
memory-display=false
memory-graph-width=5
memory-show-menu=true
memory-show-text=false
move-clock=false
net-display=false
net-graph-width=5
net-show-menu=true
net-show-text=false
show-tooltip=false
swap-graph-width=5
swap-show-menu=true
swap-show-text=false
thermal-graph-width=5
thermal-show-menu=true
thermal-show-text=false

[org/gnome/shell/extensions/user-theme]
name='Orchis'

[org/gnome/shell/overrides]
attach-modal-dialogs=true

[org/gnome/shell/weather]
automatic-location=true
locations=@av []

[org/gnome/shell/window-switcher]
app-icon-mode='both'

[org/gnome/simple-scan]
document-type='photo'

[org/gnome/software]
check-timestamp=int64 1593485964
first-run=false
install-timestamp=int64 1617723968
update-notification-timestamp=int64 1617857757

[org/gnome/solitaire/window-state]
fullscreen=false
height=600
maximized=false
width=800

[org/gnome/sysprof]
last-spawn-env=@as []
window-maximized=false
window-position=(64, 66)
window-size=(831, 519)

[org/gnome/system/location]
enabled=false

[org/gnome/terminal/legacy]
schema-version=uint32 3
theme-variant='dark'

[org/gnome/terminal/legacy/profiles:]
default='1879a64f-247b-4bfe-8529-fc6425b08b8a'
list=['b1dcc9dd-5262-4d8d-a863-c897e6d979b9', '1879a64f-247b-4bfe-8529-fc6425b08b8a', '7fc9d712-165e-4ae8-9bf1-639fc99f92de', 'f4631098-7198-4ab9-9ab6-7375d697048f', 'fb2e59da-4dcf-45d4-869f-0ee52c75b573']

[org/gnome/terminal/legacy/profiles:/:1879a64f-247b-4bfe-8529-fc6425b08b8a]
background-color='rgb(57,54,52)'
bold-color='rgb(72,0,79)'
bold-color-same-as-fg=false
bold-is-bright=false
cursor-background-color='rgb(0,86,138)'
cursor-colors-set=true
cursor-foreground-color='rgb(254,210,76)'
font='Monospace Bold 12'
foreground-color='rgb(132,200,7)'
highlight-background-color='rgb(53,127,20)'
highlight-colors-set=true
highlight-foreground-color='rgb(46,0,156)'
palette=['rgb(0,0,0)', 'rgb(170,0,0)', 'rgb(6,151,6)', 'rgb(170,85,0)', 'rgb(0,0,170)', 'rgb(214,109,6)', 'rgb(6,121,180)', 'rgb(170,170,170)', 'rgb(85,85,85)', 'rgb(255,85,85)', 'rgb(85,255,85)', 'rgb(255,255,85)', 'rgb(85,85,255)', 'rgb(255,85,255)', 'rgb(6,121,180)', 'rgb(255,255,255)']
use-system-font=false
use-theme-colors=false
use-theme-transparency=false
use-transparent-background=false
visible-name='By Griggorii'

[org/gnome/terminal/legacy/profiles:/:7fc9d712-165e-4ae8-9bf1-639fc99f92de]
background-color='rgb(57,54,52)'
bold-color='rgb(72,0,79)'
bold-color-same-as-fg=false
bold-is-bright=false
cursor-background-color='rgb(0,86,138)'
cursor-colors-set=true
cursor-foreground-color='rgb(254,210,76)'
font='Monospace Bold 12'
foreground-color='rgb(19,123,126)'
highlight-background-color='rgb(80,255,0)'
highlight-colors-set=true
highlight-foreground-color='rgb(46,0,156)'
palette=['rgb(0,0,0)', 'rgb(170,0,0)', 'rgb(0,170,0)', 'rgb(170,85,0)', 'rgb(0,0,170)', 'rgb(170,0,170)', 'rgb(0,170,170)', 'rgb(170,170,170)', 'rgb(85,85,85)', 'rgb(255,85,85)', 'rgb(85,255,85)', 'rgb(255,255,85)', 'rgb(85,85,255)', 'rgb(255,85,255)', 'rgb(85,255,255)', 'rgb(255,255,255)']
use-system-font=false
use-theme-colors=false
use-theme-transparency=false
use-transparent-background=false
visible-name='By Griggorii_3'

[org/gnome/terminal/legacy/profiles:/:a9ad44fb-657c-493b-80af-3ec223cf944b]
background-color='rgb(238,238,236)'
foreground-color='rgb(46,52,54)'
use-system-font=false
use-theme-colors=true
visible-name='gnome'

[org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9]
background-color='rgb(68,69,67)'
bold-color-same-as-fg=true
bold-is-bright=false
cursor-background-color='rgb(165,116,34)'
cursor-colors-set=true
default-size-columns=80
font='Monospace Bold 12'
foreground-color='rgb(0,255,0)'
highlight-background-color='rgb(184,116,20)'
highlight-colors-set=true
palette=['rgb(0,0,0)', 'rgb(170,0,0)', 'rgb(0,170,0)', 'rgb(170,85,0)', 'rgb(0,0,170)', 'rgb(170,0,170)', 'rgb(0,170,170)', 'rgb(170,170,170)', 'rgb(85,85,85)', 'rgb(255,85,85)', 'rgb(85,255,85)', 'rgb(255,255,85)', 'rgb(85,85,255)', 'rgb(255,85,255)', 'rgb(85,255,255)', 'rgb(255,255,255)']
use-system-font=false
use-theme-colors=true
visible-name='By Griggorii_2'

[org/gnome/terminal/legacy/profiles:/:f4631098-7198-4ab9-9ab6-7375d697048f]
background-color='rgb(255,255,221)'
bold-color='rgb(72,0,79)'
bold-color-same-as-fg=false
bold-is-bright=false
cursor-background-color='rgb(0,86,138)'
cursor-colors-set=true
cursor-foreground-color='rgb(254,210,76)'
font='Monospace Bold 12'
foreground-color='rgb(0,0,0)'
highlight-background-color='rgb(53,127,20)'
highlight-colors-set=true
highlight-foreground-color='rgb(46,0,156)'
palette=['rgb(0,0,0)', 'rgb(170,0,0)', 'rgb(6,151,6)', 'rgb(170,85,0)', 'rgb(0,0,170)', 'rgb(214,109,6)', 'rgb(6,121,180)', 'rgb(170,170,170)', 'rgb(85,85,85)', 'rgb(255,85,85)', 'rgb(85,255,85)', 'rgb(255,255,85)', 'rgb(85,85,255)', 'rgb(255,85,255)', 'rgb(6,121,180)', 'rgb(255,255,255)']
use-system-font=false
use-theme-colors=false
use-theme-transparency=false
use-transparent-background=false
visible-name='By Griggorii_4'

[org/gnome/terminal/legacy/profiles:/:fb2e59da-4dcf-45d4-869f-0ee52c75b573]
background-color='rgb(46,52,54)'
background-transparency-percent=49
bold-color='rgb(72,0,79)'
bold-color-same-as-fg=false
bold-is-bright=false
cursor-background-color='rgb(0,86,138)'
cursor-colors-set=true
cursor-foreground-color='rgb(254,210,76)'
font='Monospace Bold 12'
foreground-color='rgb(211,215,207)'
highlight-background-color='rgb(80,255,0)'
highlight-colors-set=true
highlight-foreground-color='rgb(46,0,156)'
palette=['rgb(46,52,54)', 'rgb(204,0,0)', 'rgb(83,154,12)', 'rgb(196,160,0)', 'rgb(0,15,122)', 'rgb(117,80,123)', 'rgb(6,152,154)', 'rgb(211,215,207)', 'rgb(85,87,83)', 'rgb(239,41,41)', 'rgb(226,52,52)', 'rgb(252,233,79)', 'rgb(114,159,207)', 'rgb(173,127,168)', 'rgb(52,226,226)', 'rgb(238,238,236)']
use-system-font=false
use-theme-colors=false
use-theme-transparency=false
use-transparent-background=false
visible-name='By Griggorii_5'

[org/gnome/todo]
active-extensions=['today-panel', 'scheduled-panel', 'background', 'eds', 'todoist', 'dark-theme', 'score', 'unscheduled-panel']
default-provider='local'
view='grid'
window-maximized=false
window-position=[0, 0]
window-size=[870, 405]

[org/gnome/tweaks]
show-extensions-notice=false

[org/gnome/vinagre]
show-accels=false

[org/gnome/yelp]
font-adjustment=0
show-cursor=true

[org/gtk/Demo]
color='green'
fullscreen=false
maximized=false
window-size=(712, 437)

[org/gtk/settings/color-chooser]
custom-colors=[(0.070588235294117646, 0.37647058823529411, 0.47058823529411764, 1.0), (0.0078431372549019607, 0.21176470588235294, 0.23921568627450981, 1.0), (0.011764705882352929, 0.21176470588235297, 0.23921568627450981, 1.0), (0.87450980392156863, 0.85882352941176465, 0.76470588235294112, 1.0), (0.20000000000000001, 0.18823529411764706, 0.18431372549019609, 1.0), (0.27058823529411763, 0.25882352941176473, 0.25098039215686274, 1.0), (1.0, 1.0, 0.0, 0.5), (0.10196078431372549, 0.10196078431372549, 0.10196078431372549, 1.0)]
selected-color=(true, 0.64313725490196083, 0.0, 0.0, 1.0)

[org/gtk/settings/debug]
enable-inspector-keybinding=true

[org/gtk/settings/emoji-chooser]
recent-emoji=[(([uint32 128077, 0], 'thumbs up', ':thumbsup:'), uint32 0), (([128675, 0, 8205, 9794, 65039], 'man rowing boat', ''), 0), (([128669], 'monorail', ':monorail:'), 0), (([128138], 'pill', ':pill:'), 0), (([128511], 'moai', ':moyai:'), 0), (([128290], 'input numbers', ':1234:'), 0), (([9997, 0], 'writing hand', ':writing_hand:'), 0), (([127757], 'globe showing Europe-Africa', ':earth_africa:'), 0), (([127758], 'globe showing Americas', ':earth_americas:'), 0), (([129504], '⊛ brain', ''), 0)]

[org/gtk/settings/file-chooser]
date-format='regular'
location-mode='path-bar'
show-hidden=false
show-size-column=true
show-type-column=true
sidebar-width=229
sort-column='name'
sort-directories-first=true
sort-order='ascending'
type-format='category'
window-position=(34, 28)
window-size=(925, 504)

[org/mate/caja/list-view]
default-column-order=['name', 'size', 'type', 'date_modified', 'owner', 'octal_permissions', 'group', 'date_accessed', 'selinux_context', 'where', 'permissions', 'size_on_disk', 'mime_type']
default-visible-columns=['name', 'size', 'type', 'date_modified', 'owner', 'octal_permissions', 'group', 'date_accessed', 'selinux_context', 'where', 'permissions', 'size_on_disk', 'mime_type']

[org/mate/caja/preferences]
click-policy='single'

[org/mate/caja/window-state]
geometry='894x551+380+150'
maximized=false
side-pane-view='places'
sidebar-width=163
start-with-location-bar=true
start-with-sidebar=true
start-with-status-bar=true
start-with-toolbar=true

[org/mate/desktop/interface]
gtk-dialogs-use-header=true
gtk-overlay-scrolling=true
gtk-shell-shows-app-menu=true
gtk-shell-shows-menubar=true

[org/mate/panel/general]
object-id-list=['menu-bar', 'notification-area', 'clock', 'show-desktop', 'window-list', 'workspace-switcher', 'object-0', 'object-1', 'object-2', 'object-3', 'object-4', 'object-5', 'object-6', 'object-7', 'object-8']
toplevel-id-list=['top', 'bottom']

[org/mate/panel/objects/clock]
applet-iid='ClockAppletFactory::ClockApplet'
locked=true
object-type='applet'
panel-right-stick=true
position=0
toplevel-id='top'

[org/mate/panel/objects/clock/prefs]
custom-format=''
format='24-hour'

[org/mate/panel/objects/menu-bar]
locked=true
object-type='menu-bar'
position=0
toplevel-id='top'

[org/mate/panel/objects/notification-area]
applet-iid='NotificationAreaAppletFactory::NotificationArea'
locked=true
object-type='applet'
panel-right-stick=true
position=10
toplevel-id='top'

[org/mate/panel/objects/object-0]
applet-iid='FishAppletFactory::FishApplet'
object-type='applet'
panel-right-stick=false
position=976
toplevel-id='top'

[org/mate/panel/objects/object-1]
applet-iid='IndicatorAppletCompleteFactory::IndicatorAppletComplete'
object-type='applet'
panel-right-stick=false
position=939
toplevel-id='top'

[org/mate/panel/objects/object-2]
applet-iid='IndicatorAppletAppmenuFactory::IndicatorAppletAppmenu'
object-type='applet'
panel-right-stick=false
position=939
toplevel-id='top'

[org/mate/panel/objects/object-3]
action-type='connect-server'
object-type='action'
panel-right-stick=false
position=939
toplevel-id='top'

[org/mate/panel/objects/object-4]
action-type='shutdown'
object-type='action'
panel-right-stick=false
position=939
toplevel-id='top'

[org/mate/panel/objects/object-5]
action-type='lock'
object-type='action'
panel-right-stick=false
position=939
toplevel-id='top'

[org/mate/panel/objects/object-6]
action-type='logout'
object-type='action'
panel-right-stick=false
position=939
toplevel-id='top'

[org/mate/panel/objects/object-7]
action-type='search'
object-type='action'
panel-right-stick=false
position=939
toplevel-id='top'

[org/mate/panel/objects/object-8]
object-type='menu'
panel-right-stick=false
position=939
tooltip='Главное меню MATE'
toplevel-id='top'
use-menu-path=false

[org/mate/panel/objects/show-desktop]
applet-iid='WnckletFactory::ShowDesktopApplet'
locked=true
object-type='applet'
position=0
toplevel-id='bottom'

[org/mate/panel/objects/window-list]
applet-iid='WnckletFactory::WindowListApplet'
locked=true
object-type='applet'
position=20
toplevel-id='bottom'

[org/mate/panel/objects/workspace-switcher]
applet-iid='WnckletFactory::WorkspaceSwitcherApplet'
locked=true
object-type='applet'
panel-right-stick=true
position=0
toplevel-id='bottom'

[org/mate/panel/toplevels/bottom]
expand=true
orientation='bottom'
screen=0
size=24
y=744
y-bottom=0

[org/mate/panel/toplevels/top]
expand=true
orientation='top'
screen=0
size=24

[org/nemo/compact-view]
all-columns-have-same-width=true

[org/nemo/desktop]
background-fade=true
computer-icon-visible=true
desktop-layout='true::true'
font='Noto Sans 10.5'
home-icon-visible=true
ignored-desktop-handlers=['conky', 'nemo', 'nemo-desktop', 'nautilus', 'nautilus-desktop']
network-icon-visible=false
show-desktop-icons=false
show-orphaned-desktop-icons=true
trash-icon-visible=true
use-desktop-grid=true
volumes-visible=true

[org/nemo/icon-view]
default-use-tighter-layout=false
labels-beside-icons=false

[org/nemo/list-view]
default-column-order=['name', 'size', 'type', 'date_modified', 'where', 'owner', 'date_modified_with_time', 'group', 'date_created', 'date_accessed', 'selinux_context', 'detailed_type', 'permissions', 'octal_permissions', 'date_created_with_time', 'mime_type']
default-visible-columns=['name', 'size', 'type', 'date_modified', 'where', 'owner', 'date_modified_with_time', 'group', 'date_created', 'date_accessed', 'selinux_context', 'detailed_type', 'permissions', 'octal_permissions', 'date_created_with_time', 'mime_type']

[org/nemo/plugins]
disabled-actions=@as []
disabled-extensions=@as []
enabled-extensions=@as []

[org/nemo/preferences]
always-use-browser=true
click-policy='single'
confirm-move-to-trash=true
context-menus-show-all-actions=true
executable-text-activation='ask'
ignore-view-metadata=false
last-server-connect-method=5
never-queue-file-ops=false
quick-renames-with-pause-in-between=false
show-advanced-permissions=true
show-compact-view-icon-toolbar=true
show-computer-icon-toolbar=true
show-edit-icon-toolbar=true
show-hidden-files=false
show-home-icon-toolbar=true
show-icon-view-icon-toolbar=true
show-list-view-icon-toolbar=true
show-location-entry=true
show-new-folder-icon-toolbar=true
show-next-icon-toolbar=true
show-open-in-terminal-toolbar=true
show-previous-icon-toolbar=true
show-reload-icon-toolbar=true
show-search-icon-toolbar=true
show-show-thumbnails-toolbar=true
show-up-icon-toolbar=true
sort-directories-first=true
thumbnail-limit=uint64 1073741824
tooltips-in-icon-view=true
tooltips-in-list-view=true
tooltips-on-desktop=true
tooltips-show-access-date=true
tooltips-show-birth-date=true
tooltips-show-file-type=true
tooltips-show-mod-date=true
tooltips-show-path=true

[org/nemo/preferences/menu-config]
selection-menu-copy-to=true
selection-menu-duplicate=true
selection-menu-make-link=true
selection-menu-move-to=true

[org/nemo/sidebar-panels/tree]
show-only-directories=false

[org/nemo/window-state]
geometry='894x489+34+28'
maximized=false
side-pane-view='places'
sidebar-bookmark-breakpoint=0
sidebar-width=199
start-with-menu-bar=true
start-with-sidebar=true
start-with-status-bar=true
start-with-toolbar=true

[org/onboard]
current-settings-page=0
layout='/usr/share/onboard/layouts/Full Keyboard.onboard'
schema-version='2.3'
show-status-icon=true
show-tooltips=true
start-minimized=false
status-icon-provider='AppIndicator'
system-theme-associations={'HighContrast': 'HighContrast', 'HighContrastInverse': 'HighContrastInverse', 'LowContrast': 'LowContrast', 'ContrastHighInverse': 'HighContrastInverse', 'Default': '', 'Pop-dark-slim': '/usr/share/onboard/themes/Ambiance.theme', 'Pop-dark': '/usr/share/onboard/themes/Droid.theme'}
system-theme-tracking-enabled=false
theme='/usr/share/onboard/themes/Droid.theme'
use-system-defaults=false
xembed-onboard=true

[org/onboard/auto-show]
enabled=false

[org/onboard/icon-palette]
in-use=false

[org/onboard/icon-palette/landscape]
height=45
width=53
x=1060
y=685

[org/onboard/keyboard]
audio-feedback-enabled=false
show-click-buttons=false
touch-feedback-enabled=true

[org/onboard/theme-settings]
background-gradient=81.0
color-scheme='/usr/share/onboard/themes/Granite.colors'
key-fill-gradient=4.0
key-gradient-direction=5.0
key-label-font='Normal bold'
key-shadow-size=33.0
key-shadow-strength=70.0
key-size=99.0
key-stroke-gradient=25.0
key-stroke-width=63.0
key-style='gradient'
roundrect-radius=17.0

[org/onboard/window]
docking-shrink-workarea=false
enable-inactive-transparency=true

[org/onboard/window/landscape]
dock-height=308
height=324
width=1366
x=0
y=410

[org/sugarlabs/frame]
corner-delay=0
edge-delay=1000
trigger-size=1

[org/sugarlabs/network/gsm]
apn=''
number=''
password=''
pin=''
puk=''
username=''

[org/sugarlabs/peripherals/keyboard]
layouts=['us()']
model='pc105'
options=['']

[org/sugarlabs/screen]
brightness=929

[org/sugarlabs/sound]
volume=80

[org/sugarlabs/speech]
pitch=0
rate=0

[org/sugarlabs/user]
birth-timestamp=786639272
color='#F8E800,#00EA11'
gender='male'
group-label='Взрослый'
nick='Griggorii X64'

[org/sugarlabs/user/background]
alpha-level='0.2'
image-path=''

[org/ubuntubudgie/plugins/budgie-showtime]
autoposition=true
datefont='Sans 20'
datefontcolor='#00FCB6'
leftalign=true
linespacing=7
timefont='Sans 50'
timefontcolor='#C4A000'

[org/ubuntubudgie/plugins/weathershow]
dynamicicon=true
textcolor=['139', '255', '0']
xposition=999
yposition=300

[org/virt-manager/virt-manager]
manager-window-height=550
manager-window-width=550

[org/virt-manager/virt-manager/connections]
autoconnect=['qemu:///system']
uris=['qemu:///system']

[org/virt-manager/virt-manager/paths]
media-default=''

[org/virt-manager/virt-manager/urls]
isos=['']

[org/virt-manager/virt-manager/vmlist-fields]
disk-usage=false
network-traffic=false

[org/virt-manager/virt-manager/vms/fa8818ecc6fc40ad92d9df93a44b6ad5]
vm-window-size=(911, 600)

[org/xfce/mousepad/preferences/view]
auto-indent=false
color-scheme='tango'
font-name='Noto Sans 12'
highlight-current-line=false
indent-on-tab=true
indent-width=-1
insert-spaces=false
match-braces=false
right-margin-position=80
show-line-endings=false
show-line-marks=false
show-line-numbers=false
show-right-margin=false
show-whitespace=false
smart-home-end='disabled'
tab-width=8
use-default-monospace-font=false
word-wrap=true

[org/xfce/mousepad/preferences/window]
menubar-visible=true

[org/xfce/mousepad/state/search]
direction=2
replace-all=true

[org/xfce/mousepad/state/window]
fullscreen=false
height=472
maximized=false
width=834

[org/yorba/shotwell/plugins/enable-state]
org-gnome-shotwell-publishing-google-photos=false

[org/yorba/shotwell/preferences/editing]
external-raw-editor='eog %U'

[org/yorba/shotwell/preferences/export]
constraint='ORIGINAL'
export-format-mode='SPECIFIED'
export-metadata=true
photo-file-format='TIFF'
quality='HIGH'
scale=1200

[org/yorba/shotwell/preferences/files]
auto-import=false
commit-metadata=false
directory-pattern='%Y/%m/%d'

[org/yorba/shotwell/preferences/ui]
display-basic-properties=true
display-event-comments=false
display-extended-properties=false
display-photo-comments=false
display-photo-ratings=true
display-photo-tags=true
display-photo-titles=false
display-search-bar=false
display-sidebar=true
events-sort-ascending=false
library-photos-sort-ascending=false
library-photos-sort-by=2
photo-thumbnail-scale=179
show-welcome-dialog=false
sidebar-position=199
transparent-background-color='rgb(51,48,47)'
transparent-background-type='solid'
use-dark-theme=true

[org/yorba/shotwell/preferences/window]
direct-height=697
direct-maximize=false
direct-width=1024
library-height=697
library-maximize=false
library-width=1024

[org/yorba/shotwell/sharing/youtube]
refresh-token=''

[system/locale]
region='ru_RU.UTF-8'

[system/proxy]
use-same-proxy=false
EOF
dconf load / < dconf-settings.ini
EOF
rm dconf-settings.ini
EOF
cat << EOF > pulseaudio.desktop
[Desktop Entry]
Type=Application
Exec=pulseaudio
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[ru]=pulseaudio
Name=pulseaudio
Comment[ru]=pulseaudio
Comment=pulseaudio
EOF
chmod -R a+rwx pulseaudio.desktop
EOF
mv pulseaudio.desktop ~/.config/autostart/
EOF
rm pulseaudio.desktop
EOF
rm dconf-settings.ini
EOF
rm -rf ~/.cache/*
EOF
killall budgie-panel
EOF
budgie-panel
EOF
killall showtime_desktop
EOF
showtime_desktop
EOF
cat << EOF > Griggorii.json
{
    "background-color": "#393634",
    "badge-color": "#AC7EA8",
    "bold-color": "#FFFFFF",
    "comment": "",
    "cursor-background-color": "#8C3FBF",
    "cursor-foreground-color": "#FFFFFF",
    "foreground-color": "#0001FF",
    "highlight-background-color": "#000000",
    "highlight-foreground-color": "#FFFFFF",
    "name": "Griggorii",
    "palette": [
        "#2E3436",
        "#CC0403",
        "#19CB00",
        "#CECB00",
        "#001CD1",
        "#CB1ED1",
        "#0DCDCD",
        "#E5E5E5",
        "#4D4D4D",
        "#CC0000",
        "#23FD00",
        "#FFFD00",
        "#F57900",
        "#FD28FF",
        "#14FFFF",
        "#FFFFFF"
    ],
    "use-badge-color": false,
    "use-bold-color": false,
    "use-cursor-color": true,
    "use-highlight-color": false,
    "use-theme-colors": false
}
EOF
mv Griggorii.json ~/.config/tilix/schemes/
EOF
rm Griggorii.json
EOF
cat << EOF > Griggorii_2.json
{
    "background-color": "#33302F",
    "badge-color": "#AC7EA8",
    "bold-color": "#00A5FF",
    "comment": "",
    "cursor-background-color": "#8C3FBF",
    "cursor-foreground-color": "#FFFFFF",
    "foreground-color": "#04503C",
    "highlight-background-color": "#CC0000",
    "highlight-foreground-color": "#00466C",
    "name": "Griggorii_2",
    "palette": [
        "#04503C",
        "#CC0000",
        "#009600",
        "#D06B00",
        "#0000CC",
        "#0578B4",
        "#D66D06",
        "#CCCCCC",
        "#808080",
        "#CC0000",
        "#009600",
        "#D06B00",
        "#0000CC",
        "#F57900",
        "#0087CC",
        "#FFFFFF"
    ],
    "use-badge-color": false,
    "use-bold-color": false,
    "use-cursor-color": false,
    "use-highlight-color": false,
    "use-theme-colors": false
}
EOF
mv Griggorii_2.json ~/.config/tilix/schemes/
EOF
rm Griggorii_2.json
EOF
cat << EOF > Griggorii_3.json
{
    "background-color": "#33302F",
    "badge-color": "#AC7EA8",
    "bold-color": "#00A5FF",
    "comment": "",
    "cursor-background-color": "#8C3FBF",
    "cursor-foreground-color": "#FFFFFF",
    "foreground-color": "#0E4E3D",
    "highlight-background-color": "#CC0000",
    "highlight-foreground-color": "#00466C",
    "name": "Griggorii_3",
    "palette": [
        "#095541",
        "#CC0000",
        "#009600",
        "#D06B00",
        "#0E4E3D",
        "#CE5C00",
        "#0087CC",
        "#CCCCCC",
        "#808080",
        "#CC0000",
        "#009600",
        "#D06B00",
        "#053E80",
        "#F57900",
        "#0087CC",
        "#FFFFFF"
    ],
    "use-badge-color": false,
    "use-bold-color": false,
    "use-cursor-color": false,
    "use-highlight-color": false,
    "use-theme-colors": false
}
EOF
mv Griggorii_3.json ~/.config/tilix/schemes/
EOF
rm Griggorii_3.json
EOF
cat << EOF > nautilus-autostart.desktop
#!/usr/bin/env xdg-open
[Desktop Entry]
Type=Application
Name=Files
Exec=nautilus-desktop
OnlyShowIn=GNOME;Unity;
AutostartCondition=GSettings org.gnome.desktop.background show-desktop-icons
NoDisplay=true
X-Ubuntu-Gettext-Domain=nautilus
EOF
chmod -R a+rx nautilus-autostart.desktop
EOF
cp nautilus-autostart.desktop ~/.config/autostart/
EOF
sudo mv nautilus-autostart.desktop /etc/xdg/autostart/
EOF
rm nautilus-autostart.desktop
EOF
cat << EOF > environment
export QT_QPA_PLATFORMTHEME=qt5ct
QT_X11_NO_MITSHM=1
PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
EOF
sudo mv ./environment /etc/
EOF
rm ./environment 
EOF
sudo rm /usr/share/onboard/themes/Droid.theme
EOF
cat << EOF > Droid.theme
<?xml version="1.0" ?>
<theme format="1.3" name="Droid">
  <color_scheme>Granite</color_scheme>
  <background_gradient>81.0</background_gradient>
  <key_style>gradient</key_style>
  <roundrect_radius>17.0</roundrect_radius>
  <key_size>99.0</key_size>
  <key_stroke_width>63.0</key_stroke_width>
  <key_fill_gradient>4.0</key_fill_gradient>
  <key_stroke_gradient>25.0</key_stroke_gradient>
  <key_gradient_direction>5.0</key_gradient_direction>
  <key_label_font>Normal bold</key_label_font>
  <key_label_overrides/>
  <key_shadow_strength>70.0</key_shadow_strength>
  <key_shadow_size>33.0</key_shadow_size>
</theme>
EOF
sudo mv ./Droid.theme /usr/share/onboard/themes/
EOF
rm ./Droid.theme
EOF
rm ~/.config/autostart/nemo-desktop.desktop
EOF
rm ~/.config/autostart/nemo-desktop
EOF
rm -rf ~/.config/autostart/nemo*
EOF
sudo cp /usr/bin/nautilus-desktop.backup /usr/bin/nautilus-desktop
EOF
sudo rm /usr/bin/nautilus-desktop.backup
EOF
killall nemo*
EOF
nautilus-desktop
EOF
x-www-browser www.github.com/Griggorii/Setting_dconf_linux_OS20.04_V46.0_By_Griggorii_Wayland_adaptation
EOF
sudo -u  '/usr/sbin/gdm3' '/usr/bin/dbus-launch' gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
EOF
sudo -u  gdm3 dbus-launch gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
EOF
sudo systemctl set-default graphical.target
EOF
sudo -u  gdm dbus-launch gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
EOF
sudo rm -rf /root/.local/share/gvfs-metadata*
EOF
rm -rf ~/.local/share/gvfs-metadata/*
EOF
sudo rm /etc/xdg/autostart/nemo-desktop.desktop
EOF
killall budgie-panel
EOF
budgie-panel
EOF
killall plank
EOF
plank
EOF
