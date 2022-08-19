BREW_COMPLETION=""
. /etc/os-release

test -d ~/.linuxbrew -a "${ID}" != "arch" && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew -a "${ID}" != "arch" && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
if type brew &>/dev/null
then
  BREW_COMPLETION="$(brew --prefix)/share/zsh/site-functions"
fi
