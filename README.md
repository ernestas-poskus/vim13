# vim13

![Vim + Tmux setup](/doc/looks.png)

#### Linux Vim + Lua Installation

```
sudo apt-get install liblua5.1-dev vim-nox
sudo mkdir /usr/include/lua5.1/include/
sudo cp /usr/include/lua5.1/* /usr/include/lua5.1/include/
sudo ln -s /usr/lib/x86_64-linux-gnu/liblua5.1.so /usr/local/lib/liblua.so
hg clone https://code.google.com/p/vim/
cd vim
./configure --with-features=huge \
	--enable-perlinterp \
	--enable-rubyinterp \
	--enable-pythoninterp=yes \
	--with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
	--enable-multibyte \
	--enable-fontset \
	--enable-gui=gtk2 \
	--disable-netbeans \
	--enable-luainterp=yes \
	--with-lua-prefix=/usr/include/lua5.1 \
	--enable-cscope \
	--enable-largefile \
	--prefix=/usr
make VIMRUNTIMEDIR=/usr/share/vim/vim74
sudo checkinstall
make isntall
```

##### Macvim + Lua Installation

```
brew uninstall macvim
brew remove macvim
brew cleanup
brew install macvim --custom-icons --override-system-vim --with-lua --with-luajit
```
