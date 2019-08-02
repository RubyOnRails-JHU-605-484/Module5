class String
  def really?
    puts "YES, really"  
  end
  def length
    2
  end  
end

"hi, there".really? # => YES, really
puts "hi,there".length # => 2 (That can't be right!!!)

