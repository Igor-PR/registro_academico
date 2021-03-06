class Pessoa

    attr_accessor :nome
    attr_accessor :idade
    attr_accessor :nota    
    
    def initialize(nome,idade,nota)
        @nome, @idade, @nota = nome, idade, nota
        puts "Nova pessoa cadastrada: \nNome = #{@nome}\nIdade = #{@idade}\nNota = #{@nota}" 
        ObjectSpace.define_finalizer( self, self.class.finalize(nome) )
    end
  
    def self.finalize(nome)
      proc { puts "DESTROY PERSON #{nome}" }
    end    
    
    def imprime
        puts "Pessoa: \nNome = #{@nome}\nIdade = #{@idade}\nNota = #{@nota}"
    end
  end

p = Pessoa.new("Matheus", 20, 100)
p.imprime()
p = nil

GC.start
sleep 1 # make sure you will see the message
        # before ruby quits
puts "done"