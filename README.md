# Ruby on Rails 5.x - Do início ao fim

Curso Ruby on Rails 5.x - Do início ao fim

## RVM

#### Listar todas as versões disponíveis no repositório

```sh
$ rvm list known
```

#### Atualiza a lista

```sh
$ rvm get head
```

#### Lista as versões instaladas localmente

```sh
$ rvm list
```

#### Instala uma versão escolhida

```sh
$ rvm install x.x.x.x
```

## Ruby, IRB (Interactive Ruby Shell) e Pry (IRB alternativa, melhoria highlighting por exemplo)

#### Como executar um arquivo ruby?

```sh
$ ruby meu_arquivo.rb
```

## GEMS

#### Gems instaladas localmente

```sh
$ gem list
```

#### Pesquisa aproximada (localmente)

```sh
$ gem list <nome da gem>
```

#### Pesquisa aproximada (remotamente)

```sh
$ gem list <nome da gem> --remote
```

#### Pesquisa aproximada (remotamente para todas as versões)

```sh
$ gem list <nome da gem> --remote --all
```

#### Instalação básica de uma gem

```sh
$ gem install <nome da gem>
```

#### Instalação uma gem em uma versão específica

```sh
$ gem install <nome da gem> -v <versão x.x.x>
```

#### Remove uma gem

```sh
$ gem uninstall <nome da gem>
```

#### Remove versões antigas da gem

```sh
$ gem cleanup
```

#### Remove versões antigas de uma determinada gem

```sh
$ gem cleanup <nome da gem>
```

#### Verifica versões que serão apagadas

```sh
$ gem cleanup -d
```

## Bundler (gerenciador de dependencias)

#### É um gerenciador de dependências (também é uma GEM)

#### Instalar bundler

```sh
$ gem install bundler
```

#### Como usar
```
Crie um arquivo Gemfile, adicione um repositório (https://rubygems.org')
Adicione as gems que deseja instalar no arquivo
- gem 'lerolero'
- gem 'cpf_utils'
- gem 'faker'
```