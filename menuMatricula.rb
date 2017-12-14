def menuMatricula(lista_matriculas, lista_disciplinas, lista_alunos, lista_cursos)

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
				if (lista_alunos.to_a.size == 0)
					puts "Não há alunos cadastrados. A matricula não pode ser efetuada."
				elsif (lista_disciplinas.to_a.size == 0)
					puts "Não há disciplinas cadastradas. A matricula não pode ser efetuada."
				else
					puts "Digite o código da matrícula"
					codigo = gets.to_i
					puts "Digite o nome ou RA do aluno da matrícula"
					procura = gets
					flag_saida = 0
					alunomatriculado = [0]
					lista_alunos.each{|aluno|
						if aluno.nome == procura || aluno.ra == procura
							alunomatriculado = aluno
							puts "Aluno encontrado"

						else
							puts "Aluno não encontrado. A Matricula não pode ser efetuada."
							flag_saida = 1
						end
					}
					if flag_saida == 0
						puts "Digite o período da matrícula"
						periodo = gets
						puts "Digite o código das disciplinas da matrícula"
						puts "Digite 0 quando não houverem mais disciplinas"
						temp = gets
						i = 0
						listaDisciplinas = [0]
						while(temp != "0") do
							puts "estou no while"
							lista_disciplinas.each{ |disciplina|
								tmp = disciplina.codigo.to_s
								tmp.strip!
								if tmp == temp
									listaDisciplinas[i] = disciplina
									i += 1
								else
									flag_saida = 1
									puts "Disciplina não encontrada"
									break
								end
							}
							temp = gets
							temp = temp.to_s
							temp.strip!
							flag_saida = 0
						end
						if flag_saida == 0
							novaMatricula = 0
							novaMatricula = novaMatricula.initialize(codigo,periodo,alunomatriculado,listaDisciplinas)
							lista_matriculas << novaMatricula
							break
						end
					end
				end

			when 3
				puts "\nAlterar matrícula"

				if (lista_matriculas.to_a.size == 0)
					puts "Não há matrículas cadastradas."
				else
					puts "Digite código da matrícula"
					procura = gets

					lista_matriculas.each{|matricula|
						if matricula.codigo == procura.to_i
							puts "\nMatrícula Encontrada!\n"

							puts "\nAlterar matrícula"
							puts "Digite o código da matrícula"
							this.matricula.codigo = gets.to_i
							puts "Digite o nome ou RA do aluno da matrícula"
							procura = gets
							lista_alunos.each{|aluno|
								flag_saida = 0
								lista_alunos.each{|aluno|
									if aluno.nome == procura || aluno.ra == procura
										this.matricula.alunoMatriculado = aluno
										puts "Aluno encontrado"
									else
										puts "Aluno não encontrado. A Matricula não pode ser efetuada."
										flag_saida = 1
									end
								}
								puts "Digite o período da matrícula"
								this.matricula.periodo = gets
								i = 0
								puts "Digite o código das disciplinas da matrícula"
								puts "Digite 0 quando não houverem mais disciplinas"
								temp = gets
								i = 0
								while(temp != "0") do
									puts "estou no while"
									lista_disciplinas.each{ |disciplina|
										tmp = disciplina.codigo.to_s
										tmp.strip!
										if tmp == temp
											this.listaDisciplinas[i] = disciplina
											i += 1
										else
											flag_saida = 1
											puts "Disciplina não encontrada"
											break
										end
									}
									temp = gets
									temp = temp.to_s
									temp.strip!
									flag_saida = 0
								end

								break
							}
						end
					}
				end

			when 4
				puts "\nRemover matrícula"
				puts "Digite código da matrícula"
				procura = gets

				begin
					raise lista_matriculas.delete(matricula)
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
