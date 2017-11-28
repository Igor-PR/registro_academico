def retorno_lambda
	lam = lambda { return }
	lam.call
	puts "Retorno na funcao retorno_lambda"
end

def retorno_proc
	proc = Proc.new { return }
	proc.call
	puts "Retorno na funcao retorno_proc"
end

retorno_lambda
retorno_proc
puts "Fim da execucao"
