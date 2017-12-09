class Registro

    attr_accessor :codigo
    attr_accessor :nome

    def initialize (codigo, nome)
        @nome = nome
        @codigo = codigo
    end

    #Compara o nome e codigo do curso
    def == (outro)
        @codigo == outro.codigo && @nome == outro.nome
    end

end