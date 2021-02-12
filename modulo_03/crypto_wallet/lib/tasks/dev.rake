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

            show_spinner("Populando as tabelas....") do
                %x(rails db:seed)
            end

            # quando o codigo é somente uma linha, pode ser assim
            show_spinner("Populando as tabelas....") { %x(rails db:seed) }
        else
            puts "Você não está em ambiente de desenvolvimento!"
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
