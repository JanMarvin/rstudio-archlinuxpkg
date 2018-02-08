README
=============

First build and install the PKGBUILDs for gin, gwt, junit and mathjax. They provide what rstudio installs with its dependencies script. Be careful updating these.

Second build and install rstudio. The previously installed packages are linked into the build directory.

I will not continue to build rstudio-desktop-git on a regularly basis. This PKGBUILD is updated only if I need to and have a free minute.

Server
=============

The server conf file is just a skeleton and I did not check if there are other options. Additionaly the /usr/bin/rstudio-server file does not work. It still uses the init system and I did not bother updating it. For now use systemctl start|stop|restart. With touch you can enable the rstudio update website, but if you ever need this, you might have a look for yourself.
