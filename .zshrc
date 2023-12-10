export XDG_CONFIG_HOME=~/.config
export XDG_CONFIG_DIRS=~/.config:$XDG_CONFIG_DIRS
export BUNDLE_USER_HOME=~/.config/bundle
export BUNDLE_USER_CACHE=~/.local/bundle/cache
export BUNDLE_USER_PLUGIN=~/.local/bundle/plugin
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
export EDITOR=vim
export KEYTIMEOUT=1
export GPG_TTY=$(tty)
export GO111MODULE=on
export GOPATH=~/Projects
export TERM=xterm

      autoload -U compinit; compinit
      autoload edit-command-line

      setopt NO_BEEP
      setopt append_history
      setopt share_history

      bindkey '^Xe'   edit-command-line
      bindkey '\e[A'  up-line-or-history
      bindkey '\e[B'  down-line-or-history
      bindkey '\e[C'  forward-char
      bindkey '\e[D'  backward-char
      bindkey '\eOA'  up-line-or-history
      bindkey '\eOB'  down-line-or-history
      bindkey '\eOC'  forward-char
      bindkey '\eOD'  backward-char
      bindkey -e
      bindkey '^r' history-incremental-search-backward

      alias uuidgen='ruby -rsecurerandom -e "print SecureRandom.uuid"'
      alias tmux='tmux -f ~/.config/tmux/tmux.conf new -s Thinkpad'

      zle -N edit-command-line
      prompt="~ > "

      if [ -f ~/.local/zsh/zshrc ]; then
	        source ~/.local/zsh/zshrc
      fi

      # Launch a new or attach to an existing tmux session
#       if [ -z "$TMUX" ]; then
#         tmux list-sessions > /dev/null 2>&1
#           if [ $? -eq 0 ]; then
#               tmux attach
#                 else
#                     tmux -f ~/.config/tmux/tmux.conf
#		     tmux rename-session 'Thinkpad'
#                       fi
#                       fi
#                 	tmux rename-session 'Thinkpad'
#		       	tmux rename-window -t 0 'Term'
#                 	#tmux new-window -a -t Thinkpad -n 'IRC'
#		 	#tmux new-window -a -t Thinkpad -n 'Music'
#                 	#tmux new-window -a -t Thinkpad -n 'Stats'
#		 	tmux selectw -t 0
alias dots='/usr/local/bin/git --git-dir=/home/masetrax/.openbsd-dotfiles/ --work-tree=/home/masetrax'
