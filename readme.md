
My Config Files
===


Note: no longer relevant after switch to arch


These are my personal config notes, on github, mainly so I have them when I need them again.


Beginners guide to Installing Xmonad on Ubuntu
---

The setup is adapted from `https://github.com/vicfryzel/xmonad-config`.
I had quite the trouble getting it running on my standard Ubuntu install, so here is my version of it. I will also try to explain what is happening, allowing you to change things as you see fit.


**Requirements**

You will need all the files in the Xmonad folder, so get those first:

`git clone https://github.com/ZirconCode/config.git`


First we will need to install the dependencies:

    sudo apt-get install xmonad libghc-xmonad-contrib-dev xmobar stalonetray \
    suckless-tools scrot cabal-install

Some of these packages might be outdated for you. It will tell you which ones it couldn't find. You will need to hunt for them yourself using a package manager like Synpatic. 

You will also need to update cabal after installing it. Cabal is a build tool for Haskel applications (like xmonad)

    cabal update
    cabal install yeganesh


Now that we have all the requirements, we can start setting things up =)

**.xmonad**

Copy the `.xmonad` folder to `~/.xmonad`. For me this was `/home/simon/.xmonad` as simon is my current username. This folder contains all the configuration files xmonad will need. They are mostly written in haskell. Here's a brief overview, I encourage you to take a look at them:


 * `xmonad.hs` - This is the file which sets up xmonad. You can define workspace names, keybindings, and some color variables here. Thankfully, Vic Fryzel has commented this file very well.
 * `xmobar.hs` - The config file for Xmobar. Xmobar is the black small bar you will see at the top of your screen, it will be your taskbar. You can make anything appear there. Notably, you might want to change your location from 'LSZH', or Zuerich Switzerland, to something else. For details, visit http://projects.haskell.org/xmobar/


**Adding Xmonad to your Login Manager**

Now we need to make Xmonad accessible from the login screen. I will assume you are using **lightdm**, the current default login manager for Ubuntu.

In the Xmonad folder, you will find a file called `custom.desktop`. If you are looking at it in your file browser, it will most likely display as `AmazingXMONAD`. Copy this file to `/usr/share/xsessions`. This will add a new option called AmazingXMONAD to your login screen. This should be accessible on the top right of the login box, as a circular button. Anytime you login now, you can pick Xmonad as your window manager.

If you open the file, you will discover why it might show up as AmazingXMONAD. You may rename this to whatever your desire.


**The Path Variables**

Lastly, we need to set up the dreaded path variable. When you run echo `echo $PATH` in your console, you will see what the variable contains. These are the paths Ubuntu and xmonad will look at to find their configuration files. We need to add `~/.xmonad/bin` to this variable, so that xmonad can set itself up properly. We also need to add `~/.cabal/bin` because xmonad requires cabal for it's Haskell magic. To do this, run:

`echo "export PATH=\$PATH:~/.cabal/bin:~/.xmonad/bin" >> ~/.bashrc`

`source ~/.bashrc`

Now, if you call `echo $PATH` again, you should have the correct paths in there.

**.xsession**

Lastly, we need to tell xsession what to do after being called from lightdm, through the entry we have added earlier. To do this copy the file `.xsession` to your `~/` home path. The file should be located at `~/.xsession`. Now, when xsession is called for your username, this file will be executed. You could add your startup programs to this file, for example adding `google-chrome &` would start google chrome when you enter xmonad, provided google-chrom is installed of course.


Log out, Pick AmazingXMONAD, Log in, Enjoy!


**Troubleshooting**

Most Errors should be displayed in `~/.xsession-errors`.

You will need root permission for most of these commands. Prepend them with `sudo` if this is the case, or run `sudo su` once instead.

Some files might not show up in your file browser. This is because file beginning with a . are hidden files. To display them, use the shortcut Ctrl-H.

If you are still stuck, ask the folks at #xmonad on irc.freenode.net for help, they are amazingly helpful and kind.

Good Luck!


