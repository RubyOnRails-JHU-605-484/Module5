module Kernel
  def log(message)
    puts "#{Time.now.strftime("%m/%d/%Y %H:%M:%S - ")} #{message}"  
  end
end

puts "Regular Kernel"# => Regular Kernel
log "Our Addition to the Kernel" 
# => 03/15/2019 00:05:56 -  Our Addition to the Kernel

