require 'bundler'
Bundler.require
require 'sinatra/json'
require './lib/playlister'

class PlayListerApp < Sinatra::Application

  configure do
    set :root, File.dirname(__FILE__)
    set :public_folder, 'public/app'
  end

  get '/'do
    File.read('public/app/index.html')
  end
  
# In the route, define the instance variables 
# and 
# convert them to json

  get '/artists' do
    @artists = Artist.List
    # erb :artist_output
    @artists.to_json
  end
  
  get '/artists/:artist' do
    @artist = Artist.find_by_name(params[:artist])
    # erb :artist_info
    @artist.to_json
  end

  get '/genres' do
    @genres = Genre.list
    # erb :genre_output
    @genres.to_json
  end

  get '/genres/:genre' do
    @genre = Genre.find_by_name(params[:genre])
    # erb :genre_info
    @genre.to_json
  end

  get '/songs' do
    @songs = Song.list
    # erb :song_output
    @songs.to_json
  end

  get '/songs/:song' do
    @song = Song.find_by_name(params[:song])
    # erb :song_page
    @song.to_json
  end

end