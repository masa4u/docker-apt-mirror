## build

```
docker build -t masa4u/ubuntu-apt-mirror .
```

## run
`bionic`
```
docker run -v "/home/mnt/dev/bionic:/var/spool/apt-mirror" -e FILE=bionic.lst -p 9000:80 masa4u/ubuntu-apt-mirror

```

`zenial`
```
docker run -v "/home/mnt/dev/xenial:/var/spool/apt-mirror" -e FILE=zenial.lst -p 9000:80 masa4u/ubuntu-apt-mirror

```

`trusty`
```
docker run -v "/home/mnt/dev/apt-mirror:/var/spool/apt-mirror" -e FILE=trusty.lst -p 9000:80 masa4u/ubuntu-apt-mirror

```


