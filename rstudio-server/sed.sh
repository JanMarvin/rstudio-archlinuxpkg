#!/bin/bash
cd rstudio
git checkout -b sed

find . \( -name "*.cpp" -o -name "*.cpp.in" -o -name "*.hpp" \) -exec  sed \
        -e 's/boost::signals::/boost::signals2::/g' \
        -e 's/signals.hpp/signals2.hpp/g' \
        -e 's/boost::signal</boost::signals2::signal</g' \
        -e 's/signal.hpp/signals2\/signal.hpp/g' \
        -e 's/boost::last_value/boost::signals2::last_value/g' \
        -e 's/signals::connection/signals2::connection/g' \
        -i {} \;

git add *
git commit -m "boost signals to boost signals2"

git diff HEAD^ HEAD > ../boostsignals.patch

git checkout master
git branch -D sed
cd ..