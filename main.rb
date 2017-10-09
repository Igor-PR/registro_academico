load "aluno.rb"
load "disciplina.rb"
load "curso.rb"
load "matricula.rb"

def menu

	puts "Bem vindo ao sistema de gerenciamento acadêmico!"
	puts "Digite o numero correspondente ao comando desejado"
	puts "----------------------------------------------------"
	puts "1 - Acessar menu Disciplinas "
	puts "2 - Acessar menu Aluno "
	puts "3 - Acessar menu Cursos "
	puts "4 - Acessar menu Matricula "
	puts "----------------------------------------------------"

	menu = gets.to_i
	#Le um inteiro

	puts case menu
	when 1
	  "Acessar menu Disciplinas"
	  disciplina()
	when 2
	  "Acessar menu Aluno"
	when 3
	  "Acessar menu Cursos"
	when 4
	  "Acessar menu Matrícula"
	else
	  "Você digitou #{menu} -- Esse comando não existe"
	end

end

def disciplina
	puts "Disciplinas"
	puts "Digite o numero correspondente ao comando desejado"
	puts "----------------------------------------------------"
	puts "1 - Acessar menu Disciplinas "
	puts "2 - Acessar menu Aluno "
	puts "3 - Acessar menu Cursos "
	puts "4 - Acessar menu Matricula "
	puts "----------------------------------------------------"
end

menu()

p = Aluno.new("Rafael",10.0,"raframil@gmail.com","Ciência da computação")

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