sudo apt-get install git -y
go get -u golang.org/x/tools/cmd/go-contrib-init
go get -u golang.org/x/review/git-codereview
sudo ln -s ~/go/bin/git-codereview `git --exec-path`
mkdir $HOME/golang
cd $HOME/golang/
git clone --depth=1 https://go.googlesource.com/go
cd -