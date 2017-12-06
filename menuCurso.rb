	def menuCurso(listaCursos)
		menu = 0
		while(menu != 5) do

			puts "\nAlunos"
			puts "Digite o numero correspondente ao comando desejado"
			puts "----------------------------------------------------"
			puts "1 - Listar Cursos"
			puts "2 - Adicionar Curso"
			puts "3 - Alterar Curso"
			puts "4 - Remover Curso"
			puts "5 - Voltar"
			puts "----------------------------------------------------"

			menu = gets.to_i
			#Le um inteiro

			system "clear"
			#limpar a tela do terminal
			
			case menu
			when 1
				if (listaCursos.size == 0)
					puts "Não há cursos cadastrados."
				else
					listaCursos.each {|curso| curso.imprime()}
				end
			when 2
				puts "Adicionar curso"
			when 3
				puts "Alterar curso"
			when 4
				puts "Remover Curso"
			when 5
				puts "Voltar"
			else
				puts "Opçao inválida."
			end
		end
		puts "trem"
	end
end