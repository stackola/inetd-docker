Script to run simple console applications in docker using xinetd

1. Edit `share/run` and (replace) `share/chall.py`

To compile and start your container, navigate to the root directory of this repository and execute the following commands:

```
docker build -t name-here .
docker run -p 60001:8888 name-here
```

to connect

```
nc localhost 60001
```
