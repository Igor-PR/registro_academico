class Disciplina
  attr_accessor :codigo
  attr_accessor :nome
  attr_accessor :cargahoraria
  attr_accessor :valor

  def initialize(codigo,nome,cargahoraria,valor)
    @codigo = codigo
    @nome = nome
    @cargahoraria = cargahoraria
    @valor = valor
    puts "Nova disciplina criada: \nCódigo = #{@codigo}\nNome = #{@nome}Carga Horária = #{@cargahoraria}\nValor = #{@valor}" 
  end

  def imprime
    puts "Código = #{@codigo}\tNome = #{@nome}\tCarga Horária = #{@cargahoraria}\tValor = #{@valor}"
  end

end

