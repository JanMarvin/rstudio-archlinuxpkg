README
=============

First (build and) install the dependencies. Either from this repo or from Arch/AUR.

Second build and install rstudio desktop/server.

This PKGBUILD is updated only if I need to and have a free minute.

Server
=============

The server conf file is just a skeleton and I did not check if there are other options. Additionaly the /usr/bin/rstudio-server file does not work. It still uses the init system and I did not bother updating it. For now use systemctl start|stop|restart. With touch you can enable the rstudio update website, but if you ever need this, you might have a look for yourself.
