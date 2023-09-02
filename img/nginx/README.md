## A Simple Directory Index for Nginx

### Examples

#### Single Directory

With `/Users` mounted as `http://localhost:8080`

```shell
docker run -p 8080:80 -i \
	-v /Users/:/http/users \
	nginx
```

#### Multiple Directories

With `/mnt/disk1` mounted as `http://localhost:8080/disk1`
And `/mnt/disk2` mounted as `http://localhost:8080/disk2`

```shell
docker run -p 8060:80 -i \
	-v /mnt/disk1:/http/disk1 \
	-v /mnt/disk2:/http/disk2 \
	nginx
```