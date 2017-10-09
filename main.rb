load "aluno.rb"
load "disciplina.rb"
load "curso.rb"
load "matricula.rb"

def menu

	menu = 0
	puts "Bem vindo!"

	while(menu != 5) do
		
		puts "\nSistema de gerenciamento acadêmico"
		puts "Digite o numero correspondente ao comando desejado"
		puts "----------------------------------------------------"
		puts "1 - Acessar menu Disciplinas "
		puts "2 - Acessar menu Aluno "
		puts "3 - Acessar menu Cursos "
		puts "4 - Acessar menu Matricula "
		puts "5 - Encerrar o programa"
		puts "----------------------------------------------------"

		menu = gets.to_i
		#Le um inteiro

		system "clear" 
		#limpar a tela do terminal

		case menu
		when 1
			puts "Acessar menu Disciplinas"
			disciplina()
		when 2
			puts "\nAcessar menu Aluno"
		when 3
			puts "\nAcessar menu Cursos"
		when 4
		 	puts "\nAcessar menu Matrícula"
		when 5
		 	puts "\nTchau! :)"
		 	exit
		else
		 	puts "\nVocê digitou #{menu} -- Esse comando não existe"
		end
		system "clear" 
	end

end

def disciplina

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
			if ($lista_disciplinas.size == 0)
				puts "Não há disciplinas cadastradas"
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
			$lista_disciplinas << disciplina

		when 3
			puts "\nAlterar Disciplina"
		when 4
			puts "\nRemover Disciplina"
		when 5
			puts "\nVoltar"
		else
			puts "\nVocê digitou #{menu} -- Esse comando não existe"
		end
	end

end

#vetores globais
$lista_disciplinas = Array.new
$lista_alunos = Array.new
$lista_cursos = Array.new
$lista_matricular = Array.new

#começo do código
menu()


#EXEMPLO DE COMO USAR UMA CLASSE
#p = Aluno.new("Rafael",10.0,"raframil@gmail.com","Ciência da computação")

# p.setNome("MUDEI")
# p.setRA(1.0)
# p.setEmail("MUDEI@gmail.com")
# p.setCurso("MUDEI da computação")

# p.getNome
# p.getRA
# p.getEmail
# p.getCurso

# lista = Array.new
# lista << p

# puts "Tamanho da lista=", lista.size

# puts lista[0].