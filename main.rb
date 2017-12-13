load "registro.rb"
load "aluno.rb"
load "disciplina.rb"
load "curso.rb"
load "matricula.rb"

load "menuDisciplina.rb"
load "menuAluno.rb"
load "menuCurso.rb"
load "menuDisciplinaCurso.rb"
load "menuMatricula.rb"

load "notfounderror.rb"

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
			menuCurso($lista_cursos, $lista_disciplinas)
		when 4
		 	puts "\nAcessar menu Matrícula"
			menuMatricula($lista_matriculas, $lista_disciplinas, $lista_alunos, $lista_cursos)
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
$lista_matriculas = Array.new

#começo do código
menu()
