# docker-arch-bootstrap


## Ensure you have enough entropy on your docker host when you build it
* [Haveged](https://wiki.archlinux.org/index.php/Haveged)
    * `cat /proc/sys/kernel/random/entropy_avail`
    * Or you will have to generate the gpg for hours
