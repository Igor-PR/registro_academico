def menuCurso(lista_Cursos)
	menu = 0
	while(menu != 6) do
		puts "\nAlunos"
		puts "Digite o numero correspondente ao comando desejado"
		puts "----------------------------------------------------"
		puts "1 - Listar Cursos"
		puts "2 - Adicionar Curso"
		puts "3 - Alterar Curso"
		puts "4 - Remover Curso"
		puts "5 - Adicionar disciplinas a um curso"
		puts "6 - Voltar"
		puts "----------------------------------------------------"

		menu = gets.to_i
		#Le um inteiro

		system "clear"
		#limpar a tela do terminal
		
		case menu
		when 1
			if (lista_Cursos.size == 0)
				puts "Não há cursos cadastrados."
			else
				lista_Cursos.each {|curso| curso.imprime()}
			end
		when 2
			puts "Adicionar curso"
			puts "Digite o nome: "
			nome = gets
			puts "Digite o código: "
			codigo = gets
			puts "Digite a duracao: "
			duracao = gets
			curso = Curso.new(nome, codigo, duracao)
			lista_Cursos << curso
			puts "Curso adicionado!"
		when 3
			#To Do
		when 4
			puts "Curso a ser removido: "
			procura = gets
			#To Do: procurar e achar o curso para ser removido


		when 5
			puts "Adicionar disciplina a um curso"
			#To Do
		when 6
			puts "Voltar"
		else
			puts "Opçao inválida."
		end
	end
end