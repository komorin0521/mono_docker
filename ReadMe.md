# Overview
CS scripts compiler and runner using mono compiler

# SetUp
```
$ docker build -t mono_docker .
```

# compile and run cs scripts
1. compile
    ```
    $ docker run -it --rm -v $PWD:$PWD mono_docker mcs ${PWD}/hello.cs
    /tmp/mono_docker/example/hello.cs
    success compilation!
    ```

2. run
   ```
   $ docker run -it --rm -v $PWD:$PWD mono_docker mono ${PWD}/hello.exe
   /tmp/mono_docker/example/hello.exe
   hello Mono World
   ```

# recommend
Please add to `~/.bashrc`

```
alias 'mcs=docker run -it --rm -v $PWD:$PWD mono_docker mcs'
alias 'mono=docker run -it --rm -v $PWD:$PWD mono_docker mono'
```
