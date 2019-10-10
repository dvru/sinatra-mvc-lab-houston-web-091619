require_relative 'config/environment'


class App < Sinatra::Base

get '/' do
    erb :user_input
end 
    
post '/piglatinize' do
    @new_instance = PigLatinizer.new
    @converted = @new_instance.piglatinize(params[:user_phrase])
    erb :pig_latinized
end 

end