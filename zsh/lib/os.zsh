# FreeBSD specifics
if [[ $(uname) == "FreeBSD" ]]; then
    alias pfreload='sudo pfctl -f /etc/pf.conf'
    alias dig='drill'
fi

# Linux
if [[ $(uname) == "Linux" ]]; then
    export SHELL=/usr/bin/zsh
    export PATH=$PATH:$HOME/.local/bin
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
fi
