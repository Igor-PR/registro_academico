class Aluno

  def initialize(nome,ra,email,curso)
    @nome = nome
    @ra = ra
    @email = email
    @curso = curso
    puts "Novo aluno criado: \nNome = #{@nome}\nRA = #{@ra}\nEmail = #{@email}\nCurso = #{@curso}" 
  end

  def getNome
    puts "#{@nome}"
  end
  def getRA
    puts "#{@ra}"
  end
  def getEmail
    puts "#{@email}"
  end
  def getCurso
    puts "#{@curso}"
  end

  def setNome(nome)
    @nome = nome
  end
  def setRA(ra)
    @ra = ra
  end
  def setEmail(email)
    @email = email
  end
  def setCurso(curso)
    @curso = curso
  end

end

