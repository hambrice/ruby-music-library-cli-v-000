require 'pry'

class MusicLibraryController
  attr_accessor :path
  def initialize(path = "./db/mp3s")
    @path = path
    MusicImporter.new(path).import
  end
  
  def call
    binding.pry
  puts "Welcome to your music library!"
  puts "To list all of your songs, enter 'list songs'."
  puts "To list all of the artists in your library, enter 'list artists'."
  puts "To list all of the genres in your library, enter 'list genres'."
  puts "To list all of the songs by a particular artist, enter 'list artist'."
  puts "To list all of the songs of a particular genre, enter 'list genre'."
  puts "To play a song, enter 'play song'."
  puts "To quit, type 'exit'."
  puts "What would you like to do?"
 input = gets
 while input != "exit"
   input = gets
 end
end

def list_songs
  songs = Song.all.sort!
  binding.pry
  songs.each.with_index do |i,s|
    puts "#{i}. #{s.name} - #{s.artist} - #{s.genre}"
    binding.pry
  end
end
end
