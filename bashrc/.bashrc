set -o vi

# VIM
alias gvi='vi -g'

alias vim='vi --cmd "let cfg_ext=1"'
alias gvim='vi --cmd "let cfg_ext=1" -g'

alias vimdev='vi --cmd "let cfg_ext=1" --cmd "let cfg_dev=1"'
alias gvimdev='vi --cmd "let cfg_ext=1" --cmd "let cfg_dev=1" -g'

alias vimweb='vi --cmd "let cfg_ext=1" --cmd "let cfg_dev=1" --cmd "let cfg_web=1"'
alias gvimweb='vi --cmd "let cfg_ext=1" --cmd "let cfg_dev=1" --cmd "let cfg_web=1" -g'

alias vimall='vi --cmd "let cfg_all=1"'
alias gvimall='vi --cmd "let cfg_all=1" -g'

alias nvimdiff='nvim -d'


# GO ALIASES
alias godl='cd ~/Downloads/'
alias godocs='cd ~/Documents/'
alias godev='cd ~/dev/'
alias godot='cd ~/dotfiles/'


# DOTFILES
alias ebashrc='vim ~/.bashrc && source ~/.bashrc'
alias ezshrc='vim ~/.zshrc && source ~/.zshrc'

# GIT
# setup autocompletion
if [ -f "/usr/share/bash-completion/completions/git" ]; then
  source /usr/share/bash-completion/completions/git
  __git_complete gp _git_pull
  __git_complete gpo _git_push
  __git_complete gc _git_checkout
  __git_complete gch _git_checkout
else
  echo "Error loading git completions"
fi

alias gs='git status'
alias gp='git pull'
alias gpo='git push origin'
alias gch='git checkout'
alias gcm='git commit'
alias gchn='git checkout -b'
alias gbl='git branch -l'
alias gbr='git branch -r'
alias gdd='git diff'
alias gdc='git diff --cached'
alias gdt='git difftool'
alias gdtc='git difftool --cached'
alias g-='git checkout -'
alias ga='git add -A && gs'

cdroot () {
	TEMP_PWD=`pwd`
	while ! [ -d .git ]; do
		cd ..
	done
	OLDPWD=$TEMP_PWD
}

gchk () {
	git checkout $1
	git pull
}

# OTHER
alias ..='cd ..'
alias .='pwd'

alias ll='/bin/ls -lah'
alias lsa='/bin/ls -a'

alias free='/usr/bin/free -h'
alias df='/bin/df -h'
alias du='/usr/bin/du -h'
alias du1='/usr/bin/du -h --max-depth=1'

alias alphnum='abcdefghijklmnopqrstuvwxyz0123456789'
alias alph='abcdefghijklmnopqrstuvwxyz'
alias ALPH='ABCDEFGHIJKLMNOPQRSTUVWXYZ'
alias alPH='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'

alias reg_ip='echo "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"'
alias ma='man ascii'

