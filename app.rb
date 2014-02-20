require 'bundler'
Bundler.require
require './lib/playlister'

class PlayListerApp < Sinatra::Application

  get '/'do
    File.read('public/app/index.html')
  end
  
# In the route, define the instance variables 
# and 
# convert them to json

  get '/artists' do
  
  get '/artists/:artist' do
    # @artist = Artist.find_by_name(params[:artist])
    # erb :artist_info
  end

  get '/genres' do
    # @genres = Genre.list
    # erb :genre_output
  end

  get '/genres/:genre' do
    # @genre = Genre.find_by_name(params[:genre])
    # erb :genre_info
  end

  get '/songs' do
    # @songs = Song.list
    # erb :song_output
  end

  get '/songs/:song' do
    # @song = Song.find_by_name(params[:song])
    # erb :song_page
  end

end