cd rstudio
git checkout -b sed

find . \( -name *.cpp -or -name *.cpp.in -or -name *.hpp \) -exec sed \
        -e 's/<core::/<rscore::/g' \
        -e 's/namespace core/namespace rscore/g' \
        -e 's/core::/rscore::/g' \
        -e 's/rsrscore/rscore/g' \
        -i {} \;

git add *
git commit -m "boost fix"
git checkout master
git diff master sed > ../boost156.patch
git branch -D sed
cd ..
