namespace :dev do
    desc "Configura o ambiente de desenvolvimento"
    task setup: :environment do
        if Rails.env.development?
            # spinner = TTY::Spinner.new("[:spinner] Executando tarefas ...", format: :pulse_2)
            # outro modelo
            # spinner = TTY::Spinner.new("[:spinner] Apagando BD...")
            # spinner.auto_spin # Automatic animation with default interval

            # puts %x(rails db:drop db:create db:migrate db:seed)
            # ou
            # puts %x(rails db:drop)
            # puts %x(rails db:create)
            # puts %x(rails db:migrate)
            # puts %x(rails db:seed)
            # spinner.stop("Concluído com sucesso!") # Stop animation
            # spinner.success("(Concluído com sucesso!)")

            # Spinner um a um
            # spinner = TTY::Spinner.new("[:spinner] Apagando BD...")
            # spinner.auto_spin # Automatic animation with default interval
            # puts %x(rails db:drop)
            # spinner.success("(Concluído com sucesso!)")

            # spinner = TTY::Spinner.new("[:spinner] Criando BD...")
            # spinner.auto_spin # Automatic animation with default interval
            # puts %x(rails db:create)
            # spinner.success("(Concluído com sucesso!)")

            # spinner = TTY::Spinner.new("[:spinner] Migrando as tabelas...")
            # spinner.auto_spin # Automatic animation with default interval
            # puts %x(rails db:migrate)
            # spinner.success("(Concluído com sucesso!)")

            # spinner = TTY::Spinner.new("[:spinner] Populando as tabelas...")
            # spinner.auto_spin # Automatic animation with default interval
            # puts %x(rails db:seed)
            # spinner.success("(Concluído com sucesso!)")

            # spinner utilizando metodo

            show_spinner("Apagando banco de dados...") do
                # bloco que será adicionado ao yield
                %x(rails db:drop)
            end

            show_spinner("Criando BD....") do
                %x(rails db:create)
            end

            show_spinner("Migrando as tabelas....") do
                %x(rails db:migrate)
            end

            # show_spinner("Populando as tabelas....") do
            #     %x(rails db:seed)
            # end

            # chamando agora a task
            %x(rails dev:add_coins)
            %x(rails dev:add_mining_types)

            # quando o codigo é somente uma linha, pode ser assim
            # show_spinner("Populando as tabelas....") { %x(rails db:seed) }
        else
            puts "Você não está em ambiente de desenvolvimento!"
        end
    end

    desc "Cadastra as moedas"
    task add_coins: :environment do
        if Rails.env.development?
            show_spinner("Cadastrando moedas....") do
                coins = [
                    {
                        description: 'Bitcoin',
                        acronym: 'BTC',
                        url_image: 'https://img2.gratispng.com/20180324/tre/kisspng-bitcoin-cryptocurrency-logo-zazzle-ethereum-bitcoin-5ab6e422d6fc54.3809289415219353948806.jpg'
                    },
                    {
                        description: 'Ethereum',
                        acronym: 'ETH',
                        url_image: 'https://img.favpng.com/8/11/1/logo-ethereum-bitcoin-vector-graphics-portable-network-graphics-png-favpng-ej52fCZ1rTD6Zn7dLNtBzbSR0.jpg'
                    },
                    {
                        description: 'Dash',
                        acronym: 'DASH',
                        url_image: 'https://media.dash.org/wp-content/uploads/dash-d.png'
                    }
                ]

                coins.each do |coin|
                    Coin.find_or_create_by!(coin)
                end
            end
        end
    end

    desc "Cadastro dos tipos de mineração"
    task add_mining_types: :environment do
        if Rails.env.development?
            show_spinner("Cadastrando tipos de mineração....") do
                mining_types = [
                    {
                        name: 'Proof of Work',
                        acronym: 'PoW',
                    },
                    {
                        name: 'Proof of Stake',
                        acronym: 'PoS',
                    },
                    {
                        name: 'Proof of Capacity',
                        acronym: 'PoC',
                    }
                ]

                mining_types.each do |mining_type|
                    MiningType.find_or_create_by!(mining_type)
                end
            end
        end
    end

    private

    # um metodo para não repetir demais
    def show_spinner(msg_start, msg_end = "Concluído")
        spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
        spinner.auto_spin # Automatic animation with default interval
        # yield = bloco de código que será embutido
        yield
        spinner.success("(#{msg_end})")
    end
end
