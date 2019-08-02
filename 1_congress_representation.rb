require "httparty"

class CongressRepresentation include HTTParty
  base_uri 'whoismyrepresentative.com'
  default_params output: "json"
  format :json

  def self.get_senators_by_state(state)  
    get("/getall_sens_bystate.php", query: { state: state })
  end

  def self.get_representatives_by_state(state)  
    get("/getall_reps_bystate.php", query: { state: state })
  end  
end

p CongressRepresentation.get_senators_by_state('MD')['results']