require 'bundler'
Bundler.require
require 'sinatra/json'
require 'json'
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
    @artists = Artist.list
    json @artists
  end
  
  # get '/artists/:artist' do
  #   @artist = Artist.find_by_name(params[:artist])
  #   json @artist
  # end

  get '/genres' do
    @genres = Genre.list
    json @genres
  end

  # get '/genres/:genre' do
  #   @genre = Genre.find_by_name(params[:genre])
  #   json @genre
  # end

  get '/songs' do
    @songs = Song.list
    json @songs
  end

  # get '/songs/:song' do
  #   @song = Song.find_by_name(params[:song])
  #   json @song
  # end

end
end