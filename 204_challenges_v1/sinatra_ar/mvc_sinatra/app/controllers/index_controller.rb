#get birth path number from user input
get '/:birthdate' do
  setup_index_view
end

get '/message/:birth_path_number' do
   birth_path_number = params[:birth_path_number].to_i
   @message = Person.get_message(birth_path_number)
  erb :index
end

#form 
get '/' do 
	erb :form
end

#response
post '/' do
  birthdate = params[:birthdate].gsub("-", "")
  
  if Person.valid_birthdate(birthdate)
    birth_path_number = Person.get_birth_path_number(birthdate)
    redirect "/message/#{birth_path_number}"
  else
    @error = "Uh oh! Please enter a valid birthdate in the form of mmddyyyy. All fields are required!"
    erb :form    
  end
end

#DRY refactor
def setup_index_view
	birthdate = params[:birthdate]
	birth_path_number = Person.get_birth_path_number(birthdate)
	@message = Person.get_message(birth_path_number)
  erb :index
end



