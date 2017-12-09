class Disciplina < Registro
  attr_accessor :cargahoraria
  attr_accessor :valor

  def initialize(codigo,nome,cargahoraria,valor)
    @cargahoraria = cargahoraria
    @valor = valor
    super(codigo, nome)
    puts "Nova disciplina criada: \nCódigo = #{@codigo}\nNome = #{@nome}Carga Horária = #{@cargahoraria}\nValor = #{@valor}" 
  end

  def imprime
    puts "Código = #{@codigo}\tNome = #{@nome}\tCarga Horária = #{@cargahoraria}\tValor = #{@valor}"
  end

end

