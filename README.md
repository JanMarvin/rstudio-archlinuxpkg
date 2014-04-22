README
=============

First build and install the PKGBUILDs for gin, gwt, junit and mathjax. They provide what rstudio installs with its dependencies script. Be careful updating these.

You need to enable the haskell-core repository for Arch [1]. haskell-pandoc is required.

Second build and install rstudio. The previously installed packages are linked into the build directory.

I usually build rstudio-desktop-git every monday. This PKGBUILD is updated if required.

Server
=============

The rstudio-server branch builds fine, but is not supported. Its functionality is not tested. The server conf file is just a skeleton and I did not check if there are other options. Additionaly the /usr/bin/rstudio-server file does not work. It still uses the init system and I did not bother updating it. For now use systemctl start|stop|restart. With touch you can enable the rstudio update website, but if you ever need this, you might have a look for yourself.

[1] https://wiki.archlinux.org/index.php/Haskell_Package_Guidelines#.5Bhaskell-core.5D
