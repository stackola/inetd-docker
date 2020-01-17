Script to run simple console applications in docker using xinetd

1. Edit `share/run` and (replace) `share/chall.py`
2. Compile and start your container

```
docker build -t name-here .
docker run -p 60001:8888 name-here
```

to connect

```
nc localhost 60001
```