require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
get '/' do
  erb :super_hero
end
post '/team' do
@team= params[:team]
params[:team][:heoes].each do |hero_details|
Superhero.new(hero_details)
end
@superheroes= Superhero.all
  erb :team

end
end
