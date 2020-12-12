# whereAmI

![Shell][1]![License][3]

[1]: https://img.shields.io/badge/Shell-Bash-89e051
[3]: https://img.shields.io/badge/license-MIT-orange

A short shell script that returns you your IPv4 address and its geolocation.

### Update December 10th 2020.
- Regex bug fixed: script now works for countries with spaces in their names e.g. United States. 
- New line bug fixed: added new line character to end of script.


### Update August 30th 2020.

- The script is now POSIX compatible.
- It performs much better and is more conceis: 2 `sed` and 2 `grep` commands --> 1 `sed` command.
- End points have again been updated to provide better geolocation accuracy.

If you have previously installed the script, update your local copy like this:

```
$ cd ~/whereAmI/
$ git pull origin master
```

Also for those who created an alias, change the interpreter to shebang:

`alias myip="/bin/sh ~/whereAmI/findmepls.sh"`

## Installation

```
$ cd ~
$ git clone https://github.com/trozler/whereAmI.git
```

I recommend adding the following alias to your bashprofile (`~/.bash_profile`).
`~/.bashrc` should also work.

```
$ echo -e '\nalias myip="/bin/sh ~/whereAmI/findmepls.sh"' >> ~/.bash_profile
$ source ~/.bash_profile
```

## How to run

If you created the alias:

```
$ myip
88.3.356.944 - Palma, Balearic Islands, ES.
```

Otherwise:

```
$ /bin/sh ~/whereAmI/findmepls.sh
88.3.356.944 - Palma, Balearic Islands, ES.
```

Lastly, if you are not connected to the internet, then well, you must be somewhere off the shoulder of Orion.
