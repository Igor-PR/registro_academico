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
				puts "Digite o nome: "
				nome = gets
				puts "Digite o código: "
				codigo = gets
				puts "Digite a duracao: "
				duracao = gets
				curso = curso.new(nome, codigo, duracao)
				listaCursos << curso
				puts "Curso adicionado!"
			when 3
				#To Do


			when 4
				puts "Curso a ser removido: "
				curso = gets
				begin
        			raise listaCursos.delete(curso)
        			puts "Disciplina Removida!\n\n"
      			rescue
          			puts "Disciplina não está na lista"
      			end

			when 5
				puts "Voltar"
			else
				puts "Opçao inválida."
			end
		end
		puts "trem"
	end
end