
My Config Files
===

These are my personal config notes, on github, mainly so I have them when I need them again.


xmonad
---

.xmonad is adapted from https://github.com/vicfryzel/xmonad-config
-> Startup, Tags, Single Monitor 1920*1080, Switzerland, 3 Core, Wlan0

Install Notes (ontop of default Ubuntu):

* Install requirements of vicfryzel/xmonad-config use Synaptic to find newer packages when necessary
* `sudo apt-get install xmonad`
* Setup Path Variables: `echo "export PATH=\$PATH:~/.cabal/bin:~/.xmonad/bin" >> ~/.bashrc`
* for lightdm login manager (default), move `custom.desktop` to `/usr/share/xsessions`
  it might show up as `AmazingXMONAD` in your file manager
* move `.xsession` to `~/.xsession`
* move `.xmonad` to `~/.xmonad/`
* Log out, pick the AmazingXMONDA session, enjoy =)



