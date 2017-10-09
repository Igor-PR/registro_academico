class Disciplina

  def initialize(codigo,nome,cargahoraria,valor)
    @codigo = codigo
    @nome = nome
    @cargahoraria = cargahoraria
    @valor = valor
    puts "Nova disciplina criada: \nCódigo = #{@codigo}\nNome = #{@nome}\nCarga Horária = #{@cargahoraria}\nValor = #{@valor}" 
  end

  def getCodigo
    puts "#{@codigo}"
  end
  def getNome
    puts "#{@nome}"
  end
  def getCargaHoraria
    puts "#{@cargahoraria}"
  end
  def getValor
    puts "#{@valor}"
  end

  def setCodigo(codigo)
    @codigo = codigo
  end
  def setNome(nome)
    @nome = nome
  end
  def setCargaHoraria(cargahoraria)
    @cargahoraria = cargahoraria
  end
  def setValor(valor)
    @valor = valor
  end

end

