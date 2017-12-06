class Curso < Registro

  attr_accessor :duracao  #duracao do curso
  attr_accessor :disciplinas #grade horaria do curso

  def initialize(codigo,nome,duracao)
    @duracao = duracao
    @disciplinas = Array.new
    super(codigo, nome)
    puts "Novo curso criado: \nCódigo = #{@codigo}\nNome = #{@nome}\nDuração = #{@duracao}" 
  end

  def imprime
    puts "Código = #{@codigo}\nNome = #{@nome}\nDuração = #{@duracao}"
    if disciplinas.size > 0
      disciplinas.each { |disciplina| puts disciplina.imprime }
    end
  end
  
end

