# Criado um arquivo Gemfile.lock tipo o composer.lock

# Sistema de versionamento
# X.Y.Z (Major.Minor.Patch)
# Ex: gem 'cpf_utils', '1.0.0'
# Basicamente o Patch é para correções, Minor para alterações pequenas e Major quando
# as alterações são grandes, muitas vezes impactando na forma de usar a gem 

# invocando a Gem instalada pelo Gemfile
require 'cpf_utils'

puts CpfUtils.cpf_formatado