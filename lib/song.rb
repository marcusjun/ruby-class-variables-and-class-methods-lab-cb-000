class Song
  @@count=0
  @@genres=[]
  @@artists=[]
  attr_accessor :name,:artist,:genre

  def initialize (name,artist,genre)
      @name=name
      @artist=artist
      @genre=genre
      @@count+=1
      @@genres<<genre
      @@artists<<artist
  end

  def self.count
    @@count
  end

  def self.artists
    #@@artists.collect do |performer|
      #if @@artists.none? {|name| name==performer}
        #performer
      #end
    #end
    @@artists.uniq#select {|performer| }

  end

  def self.genres
    #@@genres.collect {|genre| genre if @@genre.none?}
    @@genres.uniq
  end

  def self.genre_count
    genre_hash={}

    @@genres.each do |genre|
      genre_hash[genre]=@@genres.select{|music_type| genre==music_type}.length
    end
      #if genre_hash.keys.none? {|music_type| music_type==genre}
        #genre_hash[genre]=index
      #else
        #genre_hash[genre]=index
      #end
    #end

    #end
    genre_hash
  end

  def self.artist_count
    artist_hash={}

    @@artists.each do |artist|
      artist_hash[artist]=@@artists.select{|performer_name| artist==performer_name}.length
    end
    #@@artists.each_with_index do |artist,index|
      #artist_hash[artist]=index+1
    #end
    artist_hash
  end

end
