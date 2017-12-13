class Disciplina < Registro
  attr_accessor :cargahoraria
  attr_accessor :valor

  def initialize(codigo,nome,cargahoraria,valor)
    @cargahoraria = cargahoraria
    @valor = valor
    super(codigo, nome)
  end

  def imprime
    puts "Código = #{@codigo}\tNome = #{@nome}\tCarga Horária = #{@cargahoraria}\tValor = #{@valor}"
  end

end

