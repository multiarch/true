# :earth_africa: true [![Build Status](https://travis-ci.org/multiarch/true.svg?branch=master)](https://travis-ci.org/multiarch/true)

![](https://raw.githubusercontent.com/multiarch/dockerfile/master/logo.jpg)

```console
$ docker run --rm multiarch/true:linux_amd64 2>/dev/null; echo $?
0
$ docker run --rm multiarch/true:linux_386 2>/dev/null; echo $?
0
$ docker run --rm multiarch/true:linux_arm 2>/dev/null; echo $?
1
```
