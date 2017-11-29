def sub1
	puts "Inside method"
	yield
	puts "End of method"
end


def sub2
	[1, 2, 3].each do |x|
		puts x
	end
end

sub1 {puts "Outside!" }
sub2
