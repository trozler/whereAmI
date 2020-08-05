# whereAmI

![Shell][1]![License][3]

[1]: https://img.shields.io/badge/Shell-Bash-89e051
[3]: https://img.shields.io/badge/license-MIT-orange

A short shell script that returns you your IPv4 address and its geolocation.

#### Update August 5th 2020.

The endpoint `ipinfo.io` has been changed in `findme.pls`, as it turns out its geolocation is very inaccurate. Hopefully, the new endpoints provide more accuracy.

## Installation

```
$ cd ~
$ git clone https://github.com/trozler/whereAmI.git
```

I recommend adding the following alias to your bashprofile (`~/.bash_profile`).
`~/.bashrc` should also work.

```
$ echo -e '\nalias myip="/bin/bash ~/whereAmI/findmepls.sh"' >> ~/.bash_profile
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
$ /bin/bash ~/whereAmI/findmepls.sh
88.3.356.944 - Palma, Balearic Islands, ES.
```

### Note on usage

Lastly, if you are not connected to the internet, then well, you must be somewhere off the shoulder of Orion.
