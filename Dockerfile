FROM openjdk:11-jre

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key E19F5F87128899B192B1A2C2AD5F960A256A04AF
RUN apt update
RUN apt install --no-install-recommends -y software-properties-common dirmngr
RUN add-apt-repository "deb https://cloud.r-project.org/bin/linux/debian $(lsb_release -cs)-cran40/"
RUN apt update
RUN apt install --no-install-recommends -y r-base

RUN R -e 'print(Sys.getenv())'
