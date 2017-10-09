class Matricula

  def initialize(numero,aluno,periodo)
    @codigo = codigo
    @aluno = aluno
    @periodo = periodo
    puts "Nova disciplina criada: \nCodigo = #{@codigo}\nAluno = #{@aluno}\nPeríodo = #{@periodo}" 
  end

  def getCodigo
    puts "#{@codigo}"
  end
  def getAluno
    puts "#{@aluno}"
  end
  def getPeriodo
    puts "#{@periodo}"
  end

  def setCodigo(codigo)
    @codigo = codigo
  end
  def setAluno(aluno)
    @aluno = aluno
  end
  def setPeriodo(periodo)
    @periodo = periodo
  end

end

