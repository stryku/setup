export ZSH="/home/stryku/.oh-my-zsh"

ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

function srcvenv {
	source "~/my/programming/py/venvs/${1}/bin/activate"
}


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

function createvenv {
    python3.9 -m venv ~/my/programming/py/venvs/$1
}

function srcvenv {
    source ~/my/programming/py/venvs/$1/bin/activate
}

export WORKON_HOME=~/my/programming/py/venvs

export PATH=$PATH:~/bin
export PATH=$PATH:~/bin/przepisy
export PATH=$PATH:~/bin/db_books_sentences
export PATH=$PATH:~/bin/db_life
export PATH=$PATH:~/bin/db_receipt_pictures
export PATH=$PATH:~/bin/db_receipts
export PATH=$PATH:~/bin/db_voice_or_no_voice
export PATH=$PATH:~/bin/dziadzia
export PATH=$PATH:~/bin/voice_recorder
export PATH=$PATH:~/bin/invoice_generator

