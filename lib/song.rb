class Song
    attr_accessor :name, :artist, :genre

    @@artists = []
    @@count = 0
    @@genres = []

    def initialize (name, artist, genre)
        @name = name
        @genre = genre
        @artist = artist #ndividual song is initialized with a name, artist and genre.
        @@count += 1 #class variable count set to 0, goes up as soon as new song is initialized
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end
    
    def self.genres
        @@genres.uniq #returns an array of all of the genres of existing songs. This array should contain only unique genres — no duplicates! 
    end

    def self.genre_count #creating a histogram for genre_count
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1
            else
                genre_count[genre] = 1 
            end
        end
        genre_count
    end
    
    
    def self.artists
        @@artists.uniq #returns an array of all of the artists of the existing songs. This array should only contain unique artists––no repeats
    end

    def self.artist_count #creating a histogram for artist_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist] 
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
        end
        artist_count
    end
end
Song.new("Lucifer", "Jay-Z", "rap")
Song.new("99 Problems", "Jay-Z", "rap")
Song.new("hit me baby one more time", "Brittany Spears", "pop")