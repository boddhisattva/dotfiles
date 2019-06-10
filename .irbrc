require 'irb/completion'
require 'irb/ext/save-history'

alias q exit
alias re require
alias rer require_relative
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"
IRB.conf[:SAVE_HISTORY] = 10000
