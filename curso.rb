require 'matrix'

class Curso < Registro

  attr_accessor :duracao  #duracao do curso
  attr_accessor :disciplinas #grade horaria do curso

  def initialize(codigo,nome,duracao)
    @duracao = duracao
    @disciplinas = Array.new

    for semestre in (0 .. @duracao - 1 ) do
      disciplinas[semestre] = Array.new
    end
    # @disciplinas = Matrix.empty(duracao,0)
    super(codigo, nome)
  end

  def imprime
    puts "Código: #{@codigo}\nNome = #{@nome}\nDuração = #{@duracao}"

    # disciplinas.each_with_index do |disciplina,linha,coluna|
    #   puts "Semestre - #{linha} "
    #   disciplina.imprime()
    # end

    for semestre in (0 .. @duracao - 1) do
      puts "Semestre - #{semestre + 1} "
      disciplinas[semestre].each { |disciplina| puts disciplina.imprime }
    end


    # if disciplinas.size > 0
    #   disciplinas.each { |disciplina| puts disciplina.imprime }
    # end
  end

end
