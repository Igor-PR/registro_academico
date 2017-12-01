class Aluno

  attr_accessor :nome
  attr_accessor :ra
  attr_accessor :email
  attr_accessor :curso

  def initialize(nome,ra,email,curso)
    @nome = nome
    @ra = ra
    @email = email
    @curso = curso
    puts "Novo aluno criado: \nNome = #{@nome}\nRA = #{@ra}\nEmail = #{@email}\nCurso = #{@curso}"
  end

  def imprime
    puts "Nome = #{@nome}\tRA = #{@ra}\tEmail = #{@email}\tCurso = #{@curso}"
  end

end
