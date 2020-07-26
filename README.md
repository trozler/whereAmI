# whereAmI

A ten line shell script that returns you your ip address and its geolocation.

![](./promo/rachel.jpg)
![](./promo/harrison.jpg)
![](./promo/blondguy.jpg)

## Installation

```
$ cd ~
$ git clone https://github.com/trozler/whereAmI.git
```

I recommend adding the following alias to your bashprofile (`~/.bash_profile`).
`~/.bashrc` should also work.

```
echo -e '\nalias myip2="/bin/bash ~/whereamI/findmepls.sh"' >> ~/.bash_profile
```

## How to run

If you created an alias:

```
Tonys-MacBook-Pro-3:~ tonyrosler$ myip
88.3.156.244 - Balearic Islands, Spain.
Tonys-MacBook-Pro-3:~ tonyrosler$
```

Otherwise:

```
Tonys-MacBook-Pro-3:~ tonyrosler$ /bin/bash whereAmI/findmepls.sh
88.3.156.244 - Balearic Islands, Spain.
Tonys-MacBook-Pro-3:~ tonyrosler$
```

### Note on usage

This script utilises a free api which allows for 3 requests per second.

Lastly, if you are not connected to the internet, then well, you must be somehwere of the shoulder of Orion.
