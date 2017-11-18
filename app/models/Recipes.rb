class Recipes
	include HTTParty

	default_options.update(verify: false) # Turn off SSL verification
	base_uri 'http://food2fork.com/api/search'
	default_params key: '126df176d73da955b2e49c790ab4b5be'
	#to set environment variables
	#go to enviroment variables - system variables
	#add new, and enter the name and value
	#FAQ: https://github.com/jhu-ep-coursera/fullstack-course1-module3/wiki#httparty
	format :json

	def self.for(term)
		get("",query: {q: term})["recipes"]
	end
end