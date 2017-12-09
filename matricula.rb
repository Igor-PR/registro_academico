class Matricula
  attr_accessor :codigo
  attr_accessor :periodo
  attr_accessor :valor
  attr_accessor :listaDisciplinas

  def initialize(numero,periodo,aluno,listaDisciplinas)
    @codigo = codigo
    @periodo = periodo
    @listaDisciplinas = listaDisciplinas
    @valor = 0
    calculaValor()

    lista_alunos.each{ |aluno|
      if aluno.nome == aluno || aluno.ra == aluno
        @alunoMatriculado = aluno
      end

    puts "Nova matrícula criada criada: \nCodigo = #{@codigo}\nAluno = #{@alunoMatriculado}\nPeríodo = #{@periodo}"
  }

  def imprime()
    puts "Codigo = #{@codigo}\nAluno = #{@alunoMatriculado}\nPeriodo = #{@periodo}\nDisciplinas matriculadas = "
    listaDisciplinas.each { |disciplina| puts disciplina.imprime()}
  end

  def calculaValor()
    listaDisciplinas.each { |disciplina| @valor += disciplina.valor}
  end
  end
end
