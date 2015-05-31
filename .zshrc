# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

#allows command like arguments to rake tasks
#more details here - https://robots.thoughtbot.com/how-to-use-arguments-in-a-rake-task
unsetopt nomatch

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rails postgres z sublime rvm)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/Users/mohnishgjadwani/.rvm/gems/ruby-1.9.3-p484@sb_prod/bin:/Users/mohnishgjadwani/.rvm/gems/ruby-1.9.3-p484@global/bin:/Users/mohnishgjadwani/.rvm/rubies/ruby-1.9.3-p484/bin:/Users/mohnishgjadwani/.rvm/bin:/Users/mohnishgjadwani/.rbenv/shims:/Users/mohnishgjadwani/.rbenv/bin:/usr/local/opt/nvm/v0.10.32/bin:/Users/mohnishgjadwani/.bin:/Users/mohnishgjadwani/.bin:/Users/mohnishgjadwani/.bin:/usr/local/bin:/Users/mohnishgjadwani/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/lib/node_modules"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#unix
alias l='ls'
alias ll='ls -al'
alias tlf='tail -f'

# bundle
alias bi="bundle install"
alias be="bundle exec"
alias b="bundle"

#gems

alias gi="gem install"
alias gu="gem uninstall"

# rails
alias rk="rake"
alias r="rspec"
alias sp="spring"
alias sps="spring stop"
alias rdc="rake db:create"
alias rdmt="rake db:migrate RAILS_ENV=test"
alias rct="rails c test"
alias rsp="rails s -p"
alias rapp="rake assets:precompile RAILS_ENV=production"
alias rsp="rails s -e production"

#deployment
alias staging=""

#git
alias grb="git rebase"
alias gcam="git commit -a -m"
alias gc="git clone"
alias gs="git stash"
alias gsp="git stash pop"
alias gf="git fetch"
alias gpo="git push origin"
# This is used for limiting commit messages width. Read more on - http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html
textwidth=72

#sublime package specific, done via - http://gmarik.info/blog/2010/10/08/ctags-on-OSX
alias ctags="`brew --prefix`/bin/ctags"

