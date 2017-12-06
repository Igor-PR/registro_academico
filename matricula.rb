class Matricula
  attr_accessor :codigo
  attr_accessor :periodo
  attr_accessor :valor
  attr_accessor :listaDisciplinas

  def initialize(numero,periodo,listaDisciplinas)
    @codigo = codigo
    @periodo = periodo
    @listaDisciplinas = listaDisciplinas
    @valor = 0
    calculaValor()
    puts "Nova matrícula criada criada: \nCodigo = #{@codigo}\nAluno = #{@aluno}\nPeríodo = #{@periodo}" 
  end

  def imprime()
    puts "Codigo = #{@codigo}\nAluno = #{@aluno}\nPeriodo = #{@periodo}\nDisciplinas matriculadas = "
    listaDisciplinas.each { |disciplina| puts disciplina.imprime()}
  end

  def calculaValor()
    listaDisciplinas.each { |disciplina| @valor += disciplina.valor}
  end

end

