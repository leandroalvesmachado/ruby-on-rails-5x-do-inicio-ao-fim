# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Criando moedas..."

# ! = mostrar o erro
Coin.create!(
    description: 'Bitcoin',
    acronym: 'BTC',
    url_image: 'https://img2.gratispng.com/20180324/tre/kisspng-bitcoin-cryptocurrency-logo-zazzle-ethereum-bitcoin-5ab6e422d6fc54.3809289415219353948806.jpg'
)

Coin.create!(
    description: 'Ethereum',
    acronym: 'ETH',
    url_image: 'https://img.favpng.com/8/11/1/logo-ethereum-bitcoin-vector-graphics-portable-network-graphics-png-favpng-ej52fCZ1rTD6Zn7dLNtBzbSR0.jpg'
)

Coin.create!(
    description: 'Dash',
    acronym: 'DASH',
    url_image: 'https://media.dash.org/wp-content/uploads/dash-d.png'
)

puts "Moedas cadastradas..."

