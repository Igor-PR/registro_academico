class Pessoa
    
    attr_accessor :nome
    attr_accessor :idade
    attr_accessor :nota    
    
    def initialize(nome,idade,nota)
        @nome, @idade, @nota = nome, idade, nota
        puts "Nova pessoa cadastrada: \nNome = #{@nome}\nIdade = #{@idade}\nNota = #{@nota}" 
    end
    
    def imprime
        puts "Pessoa: \nNome = #{@nome}\nIdade = #{@idade}\nNota = #{@nota}"
    end
end

class Aluno < Pessoa
    def imprime
      puts "Pessoa é aluno"
    end
  end
    
p = Aluno.new("Matheus", 20, 100)
p.imprime()

