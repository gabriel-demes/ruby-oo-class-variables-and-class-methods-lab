class Song 
    attr_accessor :name, :genre, :artist

    @@count = 0
    @@artists = []
    @@genres =[]

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre   
        @@count += 1
        @@artists.push(artist)
        @@genres.push(genre)
    end
    
    def self.artists
        @@artists.uniq
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        hash = {}
        @@genres.each {|genre|
        if hash[genre]
            hash[genre] += 1
        else hash[genre] = 1
        end}
        hash
    end

    def self.artist_count
        hash = {}
        @@artists.each {|artist|
        if hash[artist]
            hash[artist] += 1
        else hash[artist] = 1
        end}
        hash
    end

end