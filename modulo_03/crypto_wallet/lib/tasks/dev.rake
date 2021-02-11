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

            show_spinner("Apagando banco de dados...", "Concluído") do
                # bloco que será adicionado ao yield
                puts %x(rails db:drop)
            end
        else
            puts "Você não está em ambiente de desenvolvimento!"
        end
    end

    # um metodo para não repetir demais
    def show_spinner(msg_start, msg_end)
        spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
        spinner.auto_spin # Automatic animation with default interval
        # yield = bloco de código que será embutido
        yield
        spinner.success("(#{msg_end})")
    end
end
