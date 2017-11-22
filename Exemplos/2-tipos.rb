puts 1
puts 1.class
puts 1.class.superclass
puts 1.class.superclass.superclass
puts 1.class.superclass.superclass.superclass
puts 1.class.superclass.superclass.superclass.superclass

fixnum = (2**(0.size * 8 -2) -1)
p fixnum
p fixnum.class
fixnum += 1
p fixnum
p fixnum.class
