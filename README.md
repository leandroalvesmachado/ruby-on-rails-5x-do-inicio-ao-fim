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

* Cria uma nova aplicação sem incluir os arquivos de testes gerados automaticamente
```sh
$ rails new testeapp -T
```

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

```sh
$ rails d scaffold MiningType (desfazer scaffold)
```

* Embedded Ruby - #{} (mesclar texto, por exemplo html com ruby) extensão .html.erb

* Helpers são métodos prontos que podem ser usados nas views, facilitam a vida do programador, por exemplo o link_to

#### ROUTES

* Para listar as rotas da aplicação: Ex: http://localhost:3000/rails/info/routes

#### PARTIALS

* Permitem renderizar uma view dentro de outra
* Ex: _menu.html.erb
* Perceba o _ "underline" no início do nome do arquivo

#### TASKS

* Cria uma task no lib/tasks/dev.rake no exemplo abaixo
```sh
$ rails g task dev setup (Comando para criar a task no terminal, rails dev:setup)
```

## METODOS

* Método .map retorna sempre um array no final com as colunas escolhidas (uma coleção em array aplicando algo a todos os elementos)
* Ex: c.map { |coin| coin.description } = c.map(&:description) (retona um array com os valores da chave description)
* Ex: c.map { |coin| [coin.description, coin.acronym] }  (retorna um de array de arrays, [ ["Bitcoin", "BTC"], ["Dash", "DSH"] ])
* Método .pluck, Ex: c.pluck(:description) -> retorna um array com as descriptions
* Método .pluck, Ex: c.pluck(:description, :acronym) -> retorna um array de arrays ([ ["Bitcoin", "BTC"], ["Dash", "DSH"] ])

## YAML
 
* É um formato de serialização (codificação de dados) de dados legíveis por humanos
* Utiliza a indentação, não aceita tabs (somente espaços)
* Se baseia no espaçamento e quebra de linhas

## I18N

* I18n é a "sigla" para internacionalization (18 letras)

## ASSETS

* app/assets: para assets criados pelo próprio Rails
* lib/assets: para assets que você mesmo criou
* vendor/assets: para assets que você "pegou" de terceiros

## REQUIRE TREE

* Carrega todos os js que estao na mesma pasta, Removendo pois essa abordagem vai carregar um js para cada controller 
* //= require_tree 
* Carrega todos os css que estao na mesma pasta, Removendo pois essa abordagem vai carregar um css para cada controller 
* *= require_tree .

#### SPRING (Algumas mudanças só tem efeito com esses comandos)

* Memoria do rails (preload)

* Status do spring
```sh
$ spring status
```

* Stop do spring
```sh
$ spring stop
```