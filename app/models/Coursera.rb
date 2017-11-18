class Coursera
	include HTTParty

  default_options.update(verify: false) # Turn off SSL verification
  # need the above sentence if not the get function will return an error
  base_uri 'https://api.coursera.org/api/courses.v1'
  default_params q: "search"
  format :json

  def self.for(term)
    get("", query: {query: term})["elements"]
  end
end
