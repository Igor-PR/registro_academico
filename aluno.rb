class Aluno

  attr_accessor :nome
  attr_accessor :ra
  attr_accessor :email
  attr_accessor :curso
  attr_accessor :matricula

  def initialize(nome,ra,email,curso)
    @nome, @ra, @email, @curso, @matricula = nome, ra, email, curso, nil
  end

  def imprime
    puts "Nome = #{@nome}\tRA = #{@ra}\tEmail = #{@email}\tCurso = #{@curso}"
  end

  def == (other)
    other.ra == @ra && other.nome == @nome 
  end

end
