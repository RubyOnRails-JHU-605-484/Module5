a = 1; b = 1.0; c = 1

puts a == b    # => true  
puts a.eql? b  # => false  
puts a.eql? c  # => true
puts "one".equal? "one" #=> false

one = "one"

# Implicitly uses '==='
case one
  when /\w{3}/ then puts "Bingo!"  
end 
# => Bingo!

