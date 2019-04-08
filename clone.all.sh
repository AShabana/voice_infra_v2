git submodule init
git submodule update --remote
git submodule foreach 'git pull origin master'
git submodule foreach 'git checkout master'
