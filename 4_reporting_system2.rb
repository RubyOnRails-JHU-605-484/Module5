require_relative 'store'

class ReportingSystem2
  def initialize
    @store = Store.new
  end
  def method_missing(name, *args)
    super unless @store.respond_to?(name)  
    @store.send(name)
  end  
end

rs = ReportingSystem2.new
puts "#{rs.get_piano_desc} costs #{rs.get_piano_price}"
# => Antique piano costs 120.0