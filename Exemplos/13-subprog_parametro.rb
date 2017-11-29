def testaParametro (param1:, param2:)
	puts param1 + " " + param2
end

def testaParametro2 param1, param2
	puts param1 + " " + param2
end

testaParametro :param1 => "Olá", :param2=> "Mundinho"
testaParametro param1: "Olá", param2: "Mundão"
testaParametro2 "Enfim, ", "Tchau."

