require_relative 'store'  

class ReportingSystem2
  def initialize
    @store = Store.new
    @store.methods.grep(/^get_(.*)_desc/) do 
      ReportingSystem2.define_report_methods_for $1 
    end 
  end

  def self.define_report_methods_for (item)  
    define_method("get_#{item}_desc") { @store.send("get_#{item}_desc") }
    define_method("get_#{item}_price") do 
      @store.send("get_#{item}_price")
    end
  end  
end

rs = ReportingSystem2.new
puts "#{rs.get_piano_desc} costs #{rs.get_piano_price}"
# => Antique piano costs 120.0



