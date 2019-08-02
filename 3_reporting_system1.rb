require_relative 'store'  

class ReportingSystem1
  def initialize
    @store = Store.new
  end
  def get_piano_desc
    @store.get_piano_desc  
  end
  def get_piano_price
    @store.get_piano_price  
  end

  # ...many more simimlar methods...
end

rs = ReportingSystem1.new
puts "#{rs.get_piano_desc} costs #{rs.get_piano_price}"
# => Antique piano costs 120.0


