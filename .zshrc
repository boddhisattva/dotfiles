# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES #added because of not being able to run rake tasks(https://github.com/rails/rails/issues/38560)
export DISABLE_SPRING=true #added because of not being able to run rake tasks

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
plugins=(git rails postgres z sublime rvm docker docker-compose)

source $ZSH/oh-my-zsh.sh

# User configuration

# TODO: the below needs clean up , it is not the latest and things like sb_prod etc., can be removed as they are lon longer used..
export PATH="/Users/mohnishgjadwani/.rvm/gems/ruby-1.9.3-p484@sb_prod/bin:/Users/mohnishgjadwani/.rvm/gems/ruby-1.9.3-p484@global/bin:/Users/mohnishgjadwani/.rvm/rubies/ruby-1.9.3-p484/bin:/Users/mohnishgjadwani/.rvm/bin:/Users/mohnishgjadwani/.rbenv/shims:/Users/mohnishgjadwani/.rbenv/bin:/usr/local/opt/nvm/v0.10.32/bin:/Users/mohnishgjadwani/.bin:/Users/mohnishgjadwani/.bin:/Users/mohnishgjadwani/.bin:/usr/local/bin:/Users/mohnishgjadwani/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/lib/node_modules:/Users/mohnishgj/.rvm/bin:/Users/mohnishgj/go/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:/usr/local/opt/node@8/bin:$PATH"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
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
alias hg='history | grep'
alias to='touch'
alias mk="mkdir"

# bundle
alias b="bundle"
alias bi="bundle install"
alias bil="bundle install --local"
alias be="bundle exec"
alias beg="bundle exec guard"
alias bu="bundle update"
alias buse="bundle update --source ms_core ms_lvsg travel_insurance credit_card tax_loan"
alias busl="bundle update --source ms_lvsg"
alias busc="bundle update --source ms_core"
alias bv="bundler --version"
alias ba="bundle add" # to bundle add a Gem like to a Gemfile
alias bo="bundle open" # to bundle open a Gem in cases like when debugging
alias bcai="bundle config --global auto_install true" #auto install newly added gems at a global level to a given Rails project

# exercism
alias ef="exercism fetch"
alias es="exercism submit"

#gems
alias gi="gem install"
alias gibb="gem install bundler & bundle"
alias gu="gem uninstall"
alias gli="gem list"
alias glgp="gem list | grep"

#ruby
alias rv="ruby -v"

#rvm
alias rgu='rvm gemset use'
alias rl='rvm list'
alias rgl='rvm gemset list'
alias rcg='rvm current gemset'
#alias rgc='rvm gemset create' not using that much more any more because rcr seems to do the job for me at the moment pretty well
alias ru='rvm use'
alias rcr='rvm --create --ruby-version'
alias rre='rvm remove'
alias ri='rvm info'
alias rgh='rvm gemset home' #helps in tracing the gems related location if you'd need to modify them in anyway

# ruby
alias i="irb"

# rails
alias rk="rake"
alias r="ruby"
alias s="spring"
alias st="spring stop"
alias srk="spring rake"
alias st="spring stop"
alias rdcm="rake db:create && rake db:migrate"
alias rdct="rake db:create RAILS_ENV=test"
alias rdmt="rake db:migrate RAILS_ENV=test"
alias rds="rake db:seed"
alias rcto="rails c test" # here 'o' refers to the older syntax to access rails test console
alias rct="rails c -e test"
alias rsp="rails s -p"
alias rapp="rake assets:precompile RAILS_ENV=production"
alias rsprod="rails s -e production"
alias rr="rails routes"
alias rrg="rails routes | grep"
alias rj="rake jasmine"
alias rcs="rails c --sandbox"
alias blg="tail -f log/bullet.log"
alias rlc="rake log:clear"
alias bers="bundle exec rails s"
alias berc="bundle exec rails c"
alias berdm="bundle exec rake db:migrate"
alias rph="rails plugin --help"
alias glgr="gl | grep"
alias rg='rails generate'
alias rgc='rails generate controller'
alias rgmo='rails generate model'
alias rdem='rails destroy migration'
alias rdemo='rails destroy model'
alias rav='rails --version'
alias rarg='rake api:routes | grep'

#rails engines
alias rar="rake app:routes"
alias raprg="rake app:routes | grep"

#rake
alias rt="rake test" #to run all tests from Rakefile, more here: https://stackoverflow.com/questions/4788288/how-to-run-all-tests-with-minitest

# rspec
alias t="bundle exec rspec"
alias ri="rspec --init"
alias sr="spring rspec"

# cucumber
alias cu="cucumber"

# guard
alias g="guard"
alias gui="guard init"
alias guir="guard init rspec"

#rspec-rails
alias rgri="rails g rspec:install"

# rubocop
alias ra="rubocop -a"
alias ar="rubocop -A"
alias ras="rubocop --require rubocop-rspec -a"

#tools to help you improve your ruby code
alias ruc="rubycritic"
alias fa="fasterer"
alias fl='flog'
alias fla='flog --all'
alias re='reek'

#Manage Procfile-based applications
alias fs="foreman start"

#go
alias gv="go version"

# heroku
alias h="heroku"
alias hdm="heroku run rake db:migrate"
alias hc="heroku console"
alias hl="heroku logs"

# postgres, these aliases eventually link to the aliases of the zsh postgres plugin
alias sp="startpost"
alias stp="stoppost"
alias rp="restartpost"
alias pst="statuspost" #similar to git status

#redis
alias reb="redis-server &"

# elasticsearch
# run elasticsearch in background
alias eb="elasticsearch &"

#rabbitmq
alias rmqd="rabbitmq-server --detached"

#deployment
alias staging=""

#git
alias gh="github"
alias gl="git pull"
alias giti="git init"
alias grm="git rm"
alias grb="git rebase"
alias gcam="git commit -a -m"
alias gt="git commit -m"
alias gc="git clone"
alias gs="git stash"
alias gsp="git stash pop"
alias gf="git fetch"
alias gpo="git push origin"
alias gpom="git push origin master"
alias gpoh="git push origin HEAD" # git push current branch via - http://stackoverflow.com/questions/14031970/git-push-current-branch-shortcut
alias gpohf="git push origin HEAD -f"
alias gr="git reset"
alias gre="git revert" # git revert commit_id# #check existing zsh alias
alias grih="git rebase -i HEAD"
# This is used for limiting commit messages width. Read more on - http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html
textwidth=72
alias grbom="git rebase origin/master"
alias gsrt="git show-ref --tags"
alias grbod="git rebase origin/develop"
alias gbm="git branch -m"
alias gbr="git branch -r" #see all remote git branches
alias gl="git pull"
alias grso="git remote set-url origin"
alias gpab="git push --all origin" #git push all branches to remote
alias gsr="git reset --soft HEAD~1" #git soft revert; credits: https://stackoverflow.com/a/62425854/272398
alias gcos="git checkout staging"
alias gbds="git branch -D staging"
alias grs="git branch -D staging && git checkout staging" #do this after checking out latest master branch only with alias cmd gl
alias gres="git restore --staged"
alias gca="git commit --amend"
alias gcod="gco -b development"
alias gcd="gco development"

#zsh related
alias d=devlog

#sublime text related
#sublime package specific, done via - http://gmarik.info/blog/2010/10/08/ctags-on-OSX
alias ctags="`brew --prefix`/bin/ctags"

#homebrew
alias bri="brew install"
alias bru="brew uninstall"
alias brup="brew upgrade"
alias brr="brew reinstall"

#Automate development workflow
alias is="invoker start invoker.ini"

#elixir
alias e="elixir"
alias ev="elixir --version"

#elixir tools
alias x="iex"
alias xsm="iex -S mix"
alias m="mix"
alias mn="mix new"
alias mh="mix help"
alias mcr="mix credo"
alias mcrs="mix credo --strict"
alias mdg="mix deps.get"
alias mt="mix test"
alias mf="mix format"
alias mc="mix compile"
alias meb="mix escript.build"
alias md="mix dialyzer"

#phoenix related
alias mpn="mix phoenix.new"
alias mec="mix ecto.create"
alias mps="mix phx.server"
alias mpr="mix phx.routes"
#phoenix IEx
alias pc="iex -S mix"
alias ims="iex -S mix phx.server"
alias imt="iex -S mix test --trace"

#js
alias ni="npm install"
alias ns="npm start"

#tmux
alias tmls="tmux list-sessions"

#zsh related
alias cpz="cp .zshrc ~/" # this will copy your updated .zshrc to your root directory. This assumes your pwd has a .zshrc file

# jekyll
alias bejs="bundle exec jekyll s"

# system processes
alias pag="ps aux|grep "

# work
# aservice
alias mas="make server"
alias mat="make test"

# VSCode
#copy latest ruby snippets created on VS code to dotfiles #user system specific alias
alias clrs="cp ~/Library/Application\ Support/Code/User/snippets/ruby.json /Users/mohnishgjadwani/programming/open_source_contributions/dotfiles/vscode/"

# asdf
alias ale="asdf local elixir"

# bash
alias bv="bash --version"
alias wb="which bash"

# docker
alias dps="docker ps"
alias da="docker attach"
alias db="docker docker-compose build"

# docker app specific commands
alias d="docker-compose exec organizations-app bundle exec"
alias drdm="docker-compose exec organizations-app bundle exec rake db:migrate"
alias drdc="docker-compose exec organizations-app bundle exec rails console" #app specific

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Load the current latest version of bash in ZSH to leverage latest bash functions
# remember you to also edit your subl /etc/shells to add the latest installed bash path to it
# You will know your latest bash installation path(if installed via brew) at the time of install
# Why add $PATH to the end: to make it the first directory instead, otherwise some existing version of bash will be picked up by anything looking down your PATH.
# More on the above & why add $PATH to the end instead of the beginning is beauitfully explained here: https://stackoverflow.com/a/78274517/272398
export PATH="/opt/homebrew/Cellar/bash/5.2.26/bin:$PATH"
# If I remember correctly, this is done to run psql from the terminal
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

export PATH="/opt/homebrew/bin/chromedriver:$PATH"
export PATH="/opt/homebrew/Cellar/redis/7.2.5/bin:$PATH"
export PATH="/Users/sadhak/Downloads/softwares/gcloud/google-cloud-sdk/bin/:$PATH"
# google-cloud-sdk



# . $HOME/.asdf/asdf.sh # check later if needed for now its giving an error 'no such file or directory'
# . $HOME/.asdf/completions/asdf.bash

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
