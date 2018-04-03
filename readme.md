## build

```
docker build -t masa4u/ubunuu-apt-mirror .
```

## run

`zenial`
```
docker run -v "/home/mnt/dev/apt-mirror:/var/spool/apt-mirror" -e FILE=/root/apt/zenial.lst -p 80:80 masa4u/ubuntu-apt-mirror

```

`trusty`
```
docker run -v "/home/mnt/dev/apt-mirror:/var/spool/apt-mirror" -e FILE=/root/apt/trusty.lst -p 80:80 masa4u/ubuntu-apt-mirror

```


