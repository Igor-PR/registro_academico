def menuDisciplina(lista_disciplinas)

	menu = 0
	while(menu != 5) do

		puts "\nDisciplinas"
		puts "Digite o numero correspondente ao comando desejado"
		puts "----------------------------------------------------"
		puts "1 - Listar Disciplinas"
		puts "2 - Adicionar Disciplina"
		puts "3 - Alterar Disciplina"
		puts "4 - Remover Disciplina"
		puts "5 - Voltar"
		puts "----------------------------------------------------"

		menu = gets.to_i
		#Le um inteiro

		system "clear"
		#limpar a tela do terminal

		case menu
		when 1
			puts "\nListar Disciplinas"
			if (lista_disciplinas.size == 0)
				puts "Não há disciplinas cadastradas"
			else
				lista_disciplinas.each { |disciplina| disciplina.imprime() }
			end

		when 2
			puts "\nAdicionar Disciplina"
			puts "Digite o código da disciplina"
			codigo = gets.to_i
			puts "Digite o nome da disciplina"
			nome = gets
			puts "Digite a carga horária da disciplina"
			cargahoraria = gets.to_i
			puts "Digite o valor da disciplina"
			valor = gets.to_i

			disciplina = Disciplina.new(codigo,nome,cargahoraria,valor)
			lista_disciplinas << disciplina

		when 3
			puts "\nAlterar Disciplina"
			puts "Digite código ou nome da disciplina"
			procura = gets

			lista_disciplinas.each{|disciplina|
				if disciplina.nome == procura || disciplina.codigo == procura.to_i
					puts "\nDisciplina Encontrada!\n"
					# lista_disciplinas.delete(disciplina)

					puts "\nAlterar Disciplina"
					puts "Digite o código da disciplina"
					disciplina.codigo = gets.to_i
					puts "Digite o nome da disciplina"
					disciplina.nome = gets
					puts "Digite a carga horária da disciplina"
					disciplina.cargahoraria = gets.to_i
					puts "Digite o valor da disciplina"
					disciplina.valor = gets.to_i

					# disciplina = Disciplina.new(codigo,nome,cargahoraria,valor)
					# lista_disciplinas << disciplina
					break
				end
			}

		when 4
			puts "\nRemover Disciplina"
			puts "Digite código ou nome da disciplina"
			procura = gets

			begin
        raise lista_disciplinas.delete(disciplina)
        puts "Disciplina Removida!\n\n"
      rescue
          puts "Disciplina não está na lista"
      end

			# lista_disciplinas.each{|disciplina|
			# 	if disciplina.nome == procura || disciplina.codigo == procura.to_i
			# 		lista_disciplinas.delete(disciplina)
			# 		puts "Disciplina Removida!\n\n"
			# 		break
			# 	end
			# }

		when 5
			puts "\nVoltar"
		else
			puts "\nVocê digitou #{menu} -- Esse comando não existe"
		end
	end

end
