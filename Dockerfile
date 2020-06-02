FROM archlinux

LABEL maintainer.name="Alfredo Palhares"
LABEL maintainer.email="alfredo@palhares.me"

RUN pacman -Syu --noconfirm base-devel binutils sudo \
  && echo "%builder ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/builder \
  && sed -e 's/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' -i /etc/locale.gen \
  && locale-gen \
  && echo "LANG=en_US.UTF-8" > /etc/locale.conf \
  && mkdir -p /home/builder/joplin \
  && useradd builder \
  && chown -R builder:builder /home/builder/

COPY docker-build.sh  /usr/bin/docker-build.sh
RUN chmod a+x /usr/bin/docker-build.sh

WORKDIR /home/builder/joplin

USER builder

COPY joplin.desktop .
COPY joplin-desktop.sh .
COPY joplin.sh .
COPY PKGBUILD .

CMD ["/usr/bin/docker-build.sh"]