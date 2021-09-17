# Bullseye Kick Things

Or Debian _Bullseye_ meets R _Kick Things_!

    docker run --rm bullseye-kick-things lsb_release -cs                           
    bullseye

Also,

    docker run --rm bullseye-kick-things Rscript -e 'R.Version()$nickname |> cat()' 
    Kick Things

Note the new R `|>` 4.1.x operator. Used here by design as a test. Also note the single quote to escape the dollar.

Build a Docker image with R 4.1.x installed. Use OpenJDK as an example. Standard R instructions are _not_ exactly correct. Docker image `openjdk:11-jre` is the starting point.

    docker pull openjdk:11-jre

## GPG No-Name Error

Throws a GPG error as follows.

    gpg: keyserver receive failed: No name

Apply the fix by using the Ubuntu key server, not the one at `keys.gnupg.net`.

## Build the Image

    docker build --pull --rm -f "Dockerfile" -t bullseye-kick-things:latest "."

Installs using `r-cran-tidyverse` as the root package rather than `r-base` or `r-base-dev`. In other words, Tidyverse pulls in R as its dependency.

## Tidyverse

You can list pre-build R packages using the Aptitude. List the packages using the following APT cache command.

    apt-cache search "^r-.*" | sort

You can see Tidyverse as `r-cran-tidyverse`. Installing using the Debian package has an advantage: if the R package has non-R dependencies then the Debian package can pull those sub-dependencies automatically, including libraries and tools.

### R Package Versions

Do the Debian packages represent the latest versions?

## References

* [Debian Packages of R Software](https://cran.r-project.org/bin/linux/debian/)
