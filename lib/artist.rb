require "pry"

class Artist
    attr_accessor :name
    
    @@all = []

    def initialize(name)
      @name = name
    end

    def self.all
        @@all
    end
   
   def songs
        Song.all.select {|name| name.artist == self}
    end

   def add_song(song) #BELONGS TO
    song.artist = self
   end

   def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
   end

   def self.song_count
    Song.all.count
   end
end