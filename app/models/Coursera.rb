class Coursera
	include HTTParty

  default_options.update(verify: false) # Turn off SSL verification
  # default is true and we need to turn off SSL verification for this assignment
  base_uri 'https://api.coursera.org/api/courses.v1'
  default_params q: "search"
  format :json

  def self.for(term)
    get("", query: {query: term})["elements"]
  end
end
