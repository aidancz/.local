config repo

# .local dir hierarchy

```
$HOME/.local
|- bin
|- include
|- etc
|- share
|- lib
|- man
`- var
   |- cache
   `- log
```

stole the idea from:
https://gist.github.com/Earnestly/84cf9670b7e11ae2eac6f753910efebe

this repo is a pseudo $HOME/.local dir

this repo effect when symlinked by $HOME/.local dir:
```
.local/*  <-  $HOME/.local/*
```
this can be done via the .local/lsl shell script

# xdg variable

```sh
export XDG_CONFIG_HOME="$HOME/.local/etc"
export XDG_CACHE_HOME="$HOME/.local/var/cache"
export XDG_STATE_HOME="$HOME/.local/var/log"
```

these vaviables are set at:

- .local/etc/.sh/env
- .local/etc/.sh/profile
- .local/lsl

some program can't read these variables by design,
i have to hard code the file path, they are:

- lfrc

# name convention

`.local/etc/.vim`

Q: why prepend a dot to "vim"?
A: vim doesn't respect xdg variable, so use a dot to denote it must be symlinked

# logic behind login

```
appointment:
"a <- b" means a is symlinked by b
"a << b" means a is referenced by b

~/.profile -> .local/etc/.sh/profile >> .local/etc/.x11/xinitrc >> ~/.xprofile -> .local/etc/.x11/xprofile
                                                                 >> dwm
```