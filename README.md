# File sharing in docker

This project demonstrates how to provide read and write permissions from the container and from the host to a given volume

Create a new group and add your user to this group (needs super user privileges)

```
sudo addgroup --gid 1099 dev
sudo usermod -aG dev ${USER}
```

Prepare the volume

```
mkdir -p volume
sudo chgrp dev volume
chmod 775 volume
chmod g+s volume
```

Run tests

`./test.sh`
