FROM busybox
RUN wget http://archlinux.cs.nctu.edu.tw/iso/2015.11.01/archlinux-bootstrap-2015.11.01-x86_64.tar.gz -O - | tar -zx && \
    cp -a /root.x86_64/* . || rm -rf /root.x86_64

ADD mirrorlist /etc/pacman.d/

RUN pacman-key --init && \
    pacman-key --populate archlinux && \
    pacman -Syu --noconfirm && \
    yes|pacman -Scc

CMD ["/bin/bash"]
