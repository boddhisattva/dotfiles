Pry.config.commands.alias_command 'w',  'whereami'
Pry.config.commands.alias_command 'sm',  'show-method'
Pry.config.commands.alias_command 'e',  'exit'
Pry.config.commands.alias_command 'ep', 'exit-program'
Pry.config.commands.alias_command 'pl', 'play -l'
if defined?(PryByebug)
  Pry.config.commands.alias_command 'c', 'continue'
  Pry.config.commands.alias_command 's', 'step'
  Pry.config.commands.alias_command 'n', 'next'
  Pry.config.commands.alias_command 'f', 'finish'
end