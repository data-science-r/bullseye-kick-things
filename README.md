# openjdk11-jrer

Build a Docker image with R 4.1.x installed. Use OpenJDK as an example. Instructions are _not_ exactly correct. Docker image `openjdk:11-jre` is the starting point.

    docker pull openjdk:11-jre

## GPG No-Name Error

Throws a GPG error.

    gpg: keyserver receive failed: No name

Apply the fix by using the Ubuntu key server, not the one at `keys.gnupg.net`.

## Build the Image

    docker build --pull --rm -f "Dockerfile" -t openjdk11-jrer:latest "."

## References

* [Debian Packages of R Software](https://cran.r-project.org/bin/linux/debian/)
