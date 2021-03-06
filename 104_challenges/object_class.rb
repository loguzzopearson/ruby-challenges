class Users
	def set_name=(name)
		@name = name
	end

	def get_name
		return @name
	end

	def set_language=(language)
		@language = language
	end
	
	def get_language
		return @language
	end
end
	
class Steuerberater < Users
	def greeting
		return "There are only two things certain in life."
	end
end

class Taxpayer < Users
	def joke
	 	return "Have you heard the one about the accountant and the mortician?"
	end
end

class IRS_Agent < Users
	def expression
	 	return "frowns"
	end
end

current_cpa = Steuerberater.new
current_cpa.set_name= "Herr Stolz"
cpa_name = current_cpa.get_name


current_taxpayer = Taxpayer.new
current_taxpayer.set_name= "Jackson"
taxpayer_name = current_taxpayer.get_name

current_agent = IRS_Agent.new
current_agent.set_name= "Arnold"
agent_name = current_agent.get_name

puts "#{cpa_name} says #{current_cpa.greeting} #{taxpayer_name} asks #{current_taxpayer.joke}. #{agent_name} just #{current_agent.expression}." 

puts current_cpa.inspect
puts current_taxpayer.inspect
puts current_agent.inspect