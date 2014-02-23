require 'bundler'
Bundler.require
require 'sinatra/json'
require 'json'
require './lib/playlister.rb'
require './lib/parser.rb'

module PlayLister
class PlayListerApp < Sinatra::Application
  
  helpers Sinatra::JSON
  
  my_parser = Parser.new
  my_parser.parse_directory
  
  configure do
    set :root, File.dirname(__FILE__)
    set :public_folder, 'public/app'
  end

  get '/'do
    File.read('public/app/index.html')
  end
  
  get '/artists' do
    @artists = Artist.List
    @artists.to_json
  end
  
  # get '/artists/:artist' do
  #   @artist = Artist.find_by_name(params[:artist])
  #   @artist.to_json
  # end

  get '/genres' do
    @genres = Genre.list
    @genres.to_json
  end

  # get '/genres/:genre' do
  #   @genre = Genre.find_by_name(params[:genre])
  #   @genre.to_json
  # end

  get '/songs' do
    @songs = Song.list
    json @songs
  end

  # get '/songs/:song' do
  #   @song = Song.find_by_name(params[:song])
  #   @song.to_json
  # end

end
end