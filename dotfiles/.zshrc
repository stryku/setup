export ZSH="/home/stryku/.oh-my-zsh"

ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

function cdtmp {
    cd $(mktemp -d)
}

function mkcd {
    mkdir $1 && cd $1
}

function bh {
    history | grep 'git c[bo] ' | awk '$2 == "git" { print $NF }' | tail -n ${1:-16} | head -n ${1:-15}
}

function ngrep {
        out=$(grep $1)
        for var in "$@"
        do
                out=$(echo $out | grep $var)
        done
        echo $out
}

export WORKON_HOME=~/my/programming/py/venvs

export PATH=$PATH:~/bin
export PATH=$PATH:~/bin/dziadzia
export PATH=$PATH:~/bin/przepisy
