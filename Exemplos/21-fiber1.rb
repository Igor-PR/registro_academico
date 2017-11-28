fiber = Fiber.new do
  a = 0
  while a != 10
    Fiber.yield a
    a += 1
  end
  puts "End"
end

11.times { puts fiber.resume }

