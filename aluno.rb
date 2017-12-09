class Aluno

  attr_accessor :nome
  attr_accessor :ra
  attr_accessor :email
  attr_accessor :curso
  attr_accessor :matricula

  def initialize(nome,ra,email,curso)
    @nome = nome
    @ra = ra
    @email = email
    @curso = curso
    @matricula = NIL
  end

  def imprime
    puts "Nome = #{@nome}\tRA = #{@ra}\tEmail = #{@email}\tCurso = #{@curso}"
  end

  def == (other)
    other.ra == @ra && other.nome == @nome 
  end

end
