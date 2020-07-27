# whereAmI

A one line shell script that returns you your ip address and its geolocation.

 <p align="center"> 
    <img src="./promo/blondguy.jpg">
 </p>

## Installation

```
$ cd ~
$ git clone https://github.com/trozler/whereAmI.git
```

I recommend adding the following alias to your bashprofile (`~/.bash_profile`).
`~/.bashrc` should also work.

```
$ echo -e '\nalias myip="/bin/bash ~/whereamI/findmepls.sh"' >> ~/.bash_profile
$ source ~/.bash_profile
```

## How to run

If you created an alias:

```
$ myip
88.3.156.244 - Balearic Islands, Spain.
```

Otherwise:

```
$ /bin/bash ~/whereAmI/findmepls.sh
88.3.156.244 - Balearic Islands, Spain.
```

### Note on usage

This script utilises a free api which allows for 3 requests per second.

Lastly, if you are not connected to the internet, then well, you must be somehwere of the shoulder of Orion.
