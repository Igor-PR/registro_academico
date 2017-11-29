def callbacks(procs)
	procs[:primeiro].call
	puts "Em andamento"
	procs[:ultimo].call
end

callbacks :primeiro => Proc.new { puts "Primeiro procedimento" }, 
		  :ultimo => Proc.new { puts "Último procedimento" }

