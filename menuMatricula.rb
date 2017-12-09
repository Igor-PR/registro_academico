def menuMatricula(lista_matriculas)

	menu = 0
	while(menu != 5) do

		puts "\nMatrícula"
		puts "Digite o número correspondente ao comando desejado"
		puts "----------------------------------------------------"
		puts "1 - Listar matrículas"
		puts "2 - Adicionar matrícula"
		puts "3 - Alterar matrícula"
		puts "4 - Remover matrícula"
		puts "5 - Voltar"
		puts "----------------------------------------------------"

		menu = gets.to_i
		#Le um inteiro

		system "clear"
		#limpar a tela do terminal

		case menu
		when 1
			puts "\nListar Matrículas"
      if (lista_matriculas.to_a.size == 0)
  			puts "Não há matrículas cadastradas"
      else
				lista_matriculas.each { |matricula| matricula.imprime() }
      end

		when 2
			puts "\nAdicionar matrícula"
			puts "Digite o código da matrícula"
			codigo = gets.to_i
      puts "Digite o nome ou RA do aluno da matrícula"
      procura = gets
      lista_alunos.each{|aluno|
        if aluno.nome == procura|| aluno.ra == procura
          aluno = this.aluno
        end
			puts "Digite o período da matrícula"
			periodo = gets
      puts "Digite o código das disciplinas da matrícula"
      puts "Digite 0 quando não houverem mais disciplinas"
      disciplina = gets
      i = 0
      while(disciplina != '0') do
        listaDisciplinas.each{ |disciplina|
          if disciplina.codigo == disciplina
            listaDisciplinas[i] = this.disciplina
            i = i + 1
          end

        }
      end
			valor = calculaValor

			matrícula = matrícula.new(codigo,nome,cargahoraria,valor)
			lista_matrículas << matrícula
    }

		when 3
			puts "\nAlterar matrícula"
			puts "Digite código da matrícula"
			procura = gets

			lista_matrículas.each{|matricula|
				if matrícula.codigo == procura.to_i
					puts "\nMatrícula Encontrada!\n"

					puts "\nAlterar matrícula"
					puts "Digite o código da matrícula"
					matrícula.codigo = gets.to_i
          puts "Digite o nome ou RA do aluno da matrícula"
          procura = gets
          lista_alunos.each{|aluno|
            if aluno.nome == procura|| aluno.ra == procura
              alunoMatriculado = this.aluno
            end
					puts "Digite o período da matrícula"
					matrícula.periodo = gets
					puts "Digite o código das disciplinas da matrícula"
          puts "Digite 0 quando não houverem mais disciplinas"
          disciplina = gets
          i = 0
          while(disciplina != '0') do
            listaDisciplinas.each{ |disciplina|
              if disciplina.codigo == disciplina
                listaDisciplinas[i] = this.disciplina
                i = i + 1
              end

            }
          end

          valor = calculaValor

					break
				}
			end
    }
		when 4
			puts "\nRemover matrícula"
			puts "Digite código da matrícula"
			procura = gets

			begin
        raise lista_matrículas.delete(matrícula)
        puts "matrícula Removida!\n\n"
      rescue
          puts "matrícula não está na lista"
      end

		when 5
			puts "\nVoltar"
		else
			puts "\nVocê digitou #{menu} -- Esse comando não existe"
		end
	end

end
