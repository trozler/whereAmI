### whereamI

A small shell script that returns you your ip location and its geolocation.

### Installation

```
$ cd ~
$ git clone
```

### Need to make script executabl.

chmod 755 ./findmepls.sh
echo ""
alias myip='bash ./menuScript.sh'

### Singel line

curl -s ifconfig.me | sed 's/\$//' |
alias myip="source ~/Desktop/dev/whereamI/findmepls.sh"
