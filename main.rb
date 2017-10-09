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
	puts "1 - Listar Disciplinas"
	puts "2 - Adicionar Disciplina"
	puts "3 - Alterar Disciplina"
	puts "4 - Remover Disciplina"
	puts "----------------------------------------------------"
	
	menu = gets.to_i
	#Le um inteiro

	case menu
	when 1
		puts "Listar Disciplinas"
	when 2
		puts "Adicionar Disciplina"
		puts "Digite o código da disciplina"
		codigo = gets.to_i
		puts "Digite o nome da disciplina"
		nome = gets
		puts "Digite a carga horária da disciplina"
		cargahoraria = gets.to_i
		puts "Digite o valor da disciplina"
		valor = gets.to_i
		disciplina = Disciplina.new(codigo,nome,cargahoraria,valor)
	when 3
		puts "Alterar Disciplina"
	when 4
		puts "Remover Disciplina"
	else
		puts "Você digitou #{menu} -- Esse comando não existe"
	end

end

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