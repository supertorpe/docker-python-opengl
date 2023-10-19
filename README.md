# docker-python-opengl
Docker image to develop OpenGL apps with python

# Build docker image

```
docker build -t python-opengl:0.0.1 .
```

# Run container

```
docker run -it --rm --name python-opengl -e UID=$(id -u) -e GID=$(id -g) -v /tmp/.X11-unix:/tmp/.X11-unix -v ./notebooks:/opt/notebooks -p 8888:8888 python-opengl:0.0.1
```

When Jupyter starts, it outputs the URL to the console:
```
    To access the server, open this file in a browser:
        file:///tmp/.local/share/jupyter/runtime/jpserver-9-open.html
    Or copy and paste one of these URLs:
        http://localhost:8888/tree?token=6d141572b590a6fadc92c64fe513eb0565166c7ae8bf8523
        http://127.0.0.1:8888/tree?token=6d141572b590a6fadc92c64fe513eb0565166c7ae8bf8523
```

You can access Jupyter with the URL http://127.0.0.1:8888/tree?token=6d141572b590a6fadc92c64fe513eb0565166c7ae8bf8523 using the token provided.
