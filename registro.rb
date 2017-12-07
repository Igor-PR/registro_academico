class Registro

    attr_accessor :codigo
    attr_accessor :nome

    def initialize (codigo, nome)
        @nome = nome
        @codigo = codigo
    end

end