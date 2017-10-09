class Curso

  def initialize(codigo,nome,duracao)
    @codigo = codigo
    @nome = nome
    @duracao = duracao
    puts "Nova disciplina criada: \nCódigo = #{@codigo}\nNome = #{@nome}\nDuração = #{@duracao}" 
  end

  def getCodigo
    puts "#{@codigo}"
  end
  def getNome
    puts "#{@nome}"
  end
  def getDuracao
    puts "#{@duracao}"
  end

  def setCodigo(codigo)
    @codigo = codigo
  end
  def setNome(nome)
    @nome = nome
  end
  def setDuracao(duracao)
    @duracao = duracao
  end

end

