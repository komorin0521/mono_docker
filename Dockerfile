FROM ubuntu:16.04

RUN set -x && \
    apt update

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb http://download.mono-project.com/repo/debian wheezy main" | tee /etc/apt/sources.list.d/mono-xamarin.list
RUN apt update
RUN apt install -y --no-install-recommends \
    mono-complete

COPY compile_or_run.sh /usr/local/bin

ENTRYPOINT ["/usr/local/bin/compile_or_run.sh"]
