require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        self.name = name
        self.artist = artist
        self.genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count_hash = {}
        @@genres.each do |genre|
            if genre_count_hash[genre]
                genre_count_hash[genre] += 1
            else
                genre_count_hash[genre] = 1
            end
        end
        genre_count_hash
    end

    def self.artist_count
        @@artists.tally
    end
end

