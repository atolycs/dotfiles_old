BREW_COMPLETION=""
. /etc/os-release

if !\(type brew > /dev/null 2>&1\) -a \(${ID} != "arch"\) ;then
   eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
   BREW_COMPLETION="$(brew --prefix)/share/zsh/site-functions"
fi
