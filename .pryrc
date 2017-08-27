class Object
  def r
    reload!
  end
end

Pry.config.commands.alias_command 'd',  'disable-pry'
Pry.config.commands.alias_command 'e',  'exit'
Pry.config.commands.alias_command 'ep', 'exit-program'
Pry.config.commands.alias_command 'h', 'help'
Pry.config.commands.alias_command 'pl', 'play -l'
Pry.config.commands.alias_command 'w',  'whereami'
Pry.config.commands.alias_command 'sm',  'show-method'
if defined?(PryByebug)
  Pry.config.commands.alias_command 'c', 'continue'
  Pry.config.commands.alias_command 's', 'step'
  Pry.config.commands.alias_command 'n', 'next'
  Pry.config.commands.alias_command 'f', 'finish'
end