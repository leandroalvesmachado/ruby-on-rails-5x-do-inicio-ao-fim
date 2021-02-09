# Ruby on Rails 5.x - Do início ao fim

Curso Ruby on Rails 5.x - Do início ao fim

## Ambiente


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

## RAILS

#### Scaffold

```sh
$ rails generate scaffold Coin description:string acronym:string url_image:string
```

```sh
$ rails generate scaffold Coin description acronym url_image (Por padrão o tipo string)
```

```sh
$ RAILS_ENV=production rails s (Com as confs de produção)
```

```sh
$ rails s -e production (Com as confs de produção)
```

* Embedded Ruby - #{} (mesclar texto, por exemplo html com ruby) extensão .html.erb

* Helpers são métodos prontos que podem ser usados nas views, facilitam a vida do programador, por exemplo o link_to

#### ROUTES

* Para listar as rotas da aplicação: Ex: http://localhost:3000/rails/info/routes

