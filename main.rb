load "registro.rb"
load "aluno.rb"
load "disciplina.rb"
load "curso.rb"
load "matricula.rb"

load "notfounderror.rb"

load "menuDisciplina.rb"
load "menuAluno.rb"
load "menuCurso.rb"

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
			menuDisciplina($lista_disciplinas)
		when 2
			puts "\nAcessar menu Aluno"
			menuAluno($lista_alunos)
		when 3
			puts "\nAcessar menu Cursos"
			menuCurso($lista_cursos)
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


#vetores globais
$lista_disciplinas = Array.new
$lista_alunos = Array.new
$lista_cursos = Array.new
$lista_matricular = Array.new

#começo do código
menu()


#EXEMPLO DE COMO USAR UMA CLASSE
#p = Aluno.new("Rafael",10.0,"raframil@gmail.com","Ciência da computação")

# p.nome = "Mudei aqui"
# p.ra = 1.0
# p.email = mudeiaqui@gmail.com
# p.curso = "mudei daqui tambem"

# p.nome
# p.ra
# p.email
# p.curso

# lista = Array.new
# lista << p

# puts "Tamanho da lista=", lista.size

# puts lista[0].
