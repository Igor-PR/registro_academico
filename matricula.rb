class Matricula
  attr_accessor :codigo
  attr_accessor :aluno
  attr_accessor :periodo

  def initialize(numero,aluno,periodo)
    @codigo = codigo
    @aluno = aluno
    @periodo = periodo
    puts "Nova disciplina criada: \nCodigo = #{@codigo}\nAluno = #{@aluno}\nPeríodo = #{@periodo}" 
  end

end

