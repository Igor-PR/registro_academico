def menuDisciplinaCurso(curso, lista_disciplinas)
    menu = 0
	while(menu != 3) do
		puts "\nCurso atual: ", curso.nome, "\n"
		puts "Digite o numero correspondente ao comando desejado"
		puts "----------------------------------------------------"
		puts "1 - Adicionar uma disciplina"
		puts "2 - Remover uma disciplina"
		puts "3 - Voltar"
        puts "----------------------------------------------------"
        menu = gets.to_i
        
        case menu
        when 1
            adicionarDisciplina(curso)
        when 2
            removerDisciplina(curso)
        when 3
            puts "Voltar"
        else
            puts "Opçao inválida."
        end
    end
end


def adicionarDisciplina(curso)
    puts "Digite o codigo da disciplina: "
    codigo = gets.to_i
    puts "Digite o nome da disciplina: "
    nome = gets
    disciplina = procuraDisciplina(Disciplina.new(codigo, nome, 0, 0))
    if (disciplina.codigo < 0)
        puts "Disciplina nao encontrada!"
    else
        puts "Digite o semestre em que será adicionada: "
        semestre = gets.to_i - 1
        curso.disciplinas[semestre] << disciplina
        puts "Disciplina adicionada!"
    end
end

def removerDisciplina(curso)
    puts "Digite o codigo da disciplina: "
    codigo = gets.to_i
    puts "Digite o nome da disciplina: "
    nome = gets
    puts "Digite o semestre da disciplina: "
    semestre = gets.to_i - 1 #semestre de 1 a N
    disciplina = Disciplina.new(codigo, nome, 0, 0)
    it = curso.disciplinas[semestre].delete(disciplina)
    if it == nil
        puts "Disciplina não encontrada!"
    else
        puts "Disciplina excluída."
    end
end


def procuraDisciplina(item)
    ret = Registro.new(-1, -1) #gambiarra, nao existe operador para x == nil
    $lista_disciplinas.each { |disciplina|
        puts disciplina.codigo == item.codigo && disciplina.nome == item.nome
        if item == disciplina
			ret = disciplina
            puts "trem"
			break
		end
	}
    if ret.codigo < 0
        ret.imprime 
    end
	return ret
end