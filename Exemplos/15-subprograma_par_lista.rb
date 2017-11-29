def sub1 (*params)
	for i in 0..params.length
		puts params.at(i)
	end
end


sub1 1, 2, 3, "string"
