Customer = Struct.new(:name, :address) do # block is optional
  def to_s
    "#{name} lives at #{address}"  
  end
end
jim = Customer.new("Jim", "1000 Wall Street")
jim.name = "Jimmy"  
puts jim # => Jim lives at 1000 Wall Street

require 'ostruct' # => need to require ostruct for OpenStruct

some_obj = OpenStruct.new(name: "Joe", age: 15)  
some_obj.sure = "three"
some_obj.really = "yes, it is true"
some_obj.not_only_strings = 10
puts "#{some_obj.name} is #{some_obj.age} - #{some_obj.really}"
# => Joe is 15 - yes, it is true

