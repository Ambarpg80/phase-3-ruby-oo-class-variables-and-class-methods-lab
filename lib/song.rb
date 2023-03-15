require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0 
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << self.artist
        @@genres << self.genre
        @@count += 1
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq {|artist| artist}
    end

    def self.genres
        @@genres.uniq {|genre| genre}
    end

    def self.genre_count
        @@genres.tally
    end


    def self.artist_count
        @@artists.tally
    end

end