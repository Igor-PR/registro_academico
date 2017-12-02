def menuAluno(lista_alunos)
  menu = 0
	while(menu != 5) do

		puts "\nAlunos"
		puts "Digite o numero correspondente ao comando desejado"
		puts "----------------------------------------------------"
		puts "1 - Listar Alunos"
		puts "2 - Adicionar Aluno"
		puts "3 - Alterar Aluno"
		puts "4 - Remover Aluno"
		puts "5 - Voltar"
		puts "----------------------------------------------------"

		menu = gets.to_i
		#Le um inteiro

		system "clear"
		#limpar a tela do terminal

		case menu
		when 1
			puts "\nListar Alunos"
			if (lista_alunos.size == 0)
				puts "Não há alunos cadastradas"
			else
				lista_alunos.each { |aluno| aluno.imprime() }
			end

		when 2
			puts "\nAdicionar Aluno"
      puts "Digite o nome da aluno"
			nome = gets
			puts "Digite o RA da aluno"
			ra = gets
			puts "Digite o email"
			email = gets
			puts "Digite o curso do aluno"
			curso = gets

			aluno = Aluno.new(nome,ra,email,curso)
			lista_alunos << aluno

		when 3
			puts "\nAlterar Aluno"
			puts "Digite o ra ou nome da aluno"
			procura = gets

			lista_alunos.each{|aluno|
				if aluno.nome == procura || aluno.ra == procura
					puts "\nAluno Encontrada!\n"
          puts "Digite o nome da aluno"
    			aluno.nome = gets
    			puts "Digite o RA da aluno"
    			aluno.ra = gets
    			puts "Digite o email"
    			aluno.email = gets
    			puts "Digite o curso do aluno"
    			aluno.curso = gets
					break
				end
			}

		when 4
  		puts "\nRemover Aluno"
  		puts "Digite o ra ou nome da aluno"
  		procura = gets
      begin
        raise lista_alunos.delete(aluno)
        puts "Aluno Removido!\n\n"
      rescue
          puts "Aluno não está na lista"
      end

			# lista_alunos.each{|aluno|
			# 	if aluno.nome == procura || aluno.ra == procura
			# 		lista_alunos.delete(aluno)
			# 		puts "Aluno Removido!\n\n"
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
