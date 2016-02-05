FROM masm/archlinux
MAINTAINER Marco Monteiro <marco@neniu.org>

RUN pacman -Syq --needed --noconfirm --noprogressbar \
           autoconf \
           automake \
           bison \
           coreutils \
           file \
           flex \
           gcc \
           gcc-libs \
           imagemagick \
           libtool \
           m4 \
           make \
           patch \
           pkg-config \
           ruby2.1 && \
    yes | pacman -Sqcc && \
    rm -rf /usr/share/man/*
ENV PATH=/opt/ruby2.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN gem update && gem install bundler
