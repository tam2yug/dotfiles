# .bashrc

## ---   ここから (CentOS 7.3 , mobaxterm)の標準のbashrc
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
## ---   ここまで

## ---   ここから homeshick のために追加
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"
## ---   ここまで
