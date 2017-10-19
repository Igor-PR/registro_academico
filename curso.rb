class Curso

  attr_accessor :codigo
  attr_accessor :nome
  attr_accessor :duracao

  def initialize(codigo,nome,duracao)
    @codigo = codigo
    @nome = nome
    @duracao = duracao
    puts "Nova disciplina criada: \nCódigo = #{@codigo}\nNome = #{@nome}\nDuração = #{@duracao}" 
  end

end

