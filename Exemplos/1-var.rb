
$global_a = 2
$global_b = 3
$global_resultado = 0

#testar o resultado apenas com um @
class Test
  @@shared = 1

  def value
    @@shared
  end

  def value=(value)
    @@shared = value
  end
end

class AnotherTest < Test; end

t = Test.new
puts "t.value is #{t.value}" # 1
t.value = 2
puts "t.value is #{t.value}" # 2

x = Test.new
puts "x.value is #{x.value}" # 2

a = AnotherTest.new
puts "a.value is #{a.value}" # 2
a.value = 3
puts "a.value is #{a.value}" # 3
puts "t.value is #{t.value}" # 3
puts "x.value is #{x.value}" # 3

def soma()
  $global_resultado = $global_a + $global_b
  local = 10
end

#exemplo variavel global
soma()
puts "Exemplo de variavel global: #{$global_resultado}"

#exemplo constante
CONSTANTE = 100
puts CONSTANTE
CONSTANTE = CONSTANTE + 1
puts CONSTANTE

