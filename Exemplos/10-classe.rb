class Pessoa

    attr_accessor :nome
    attr_accessor :idade
    attr_accessor :nota    
    
    def initialize(nome,idade,nota)
        @nome = nome
        @idade = idade
        @nota = nota
        puts "Nova pessoa cadastrada: \nNome = #{@nome}\nIdade = #{@idade}\nNota = #{@nota}" 
      end
    
      def imprime
        puts "Pessoa: \nNome = #{@nome}\nIdade = #{@idade}\nNota = #{@nota}"
      end
  end

p = Pessoa.new("Matheus", 20, 100)