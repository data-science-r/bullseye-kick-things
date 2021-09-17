# Bullseye Kick Things

Or Debian _Bullseye_ meets R _Kick Things_!

Build a Docker image with R 4.1.x installed. Use OpenJDK as an example. Standard R instructions are _not_ exactly correct. Docker image `openjdk:11-jre` is the starting point.

    docker pull openjdk:11-jre

## GPG No-Name Error

Throws a GPG error as follows.

    gpg: keyserver receive failed: No name

Apply the fix by using the Ubuntu key server, not the one at `keys.gnupg.net`.

## Build the Image

    docker build --pull --rm -f "Dockerfile" -t bullseye-kick-things:latest "."

## References

* [Debian Packages of R Software](https://cran.r-project.org/bin/linux/debian/)
