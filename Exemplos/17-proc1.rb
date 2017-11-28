proc1 = Proc.new { |x| puts x*x }
proc2 = Proc.new { puts "Hello!" }

proc1.call(2)
proc2.call



