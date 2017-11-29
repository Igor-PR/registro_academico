p = Proc.new { |x| puts x*2 }

[1, 2, 3].each (&p)
