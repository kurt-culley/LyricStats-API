class StandardData
  def generate(lyrics)
    lyrics_hash = {}
    lyrics.each do |word|
      case
        when !lyrics_hash[word]
          lyrics_hash[word] = 1
        when lyrics_hash[word] > 200
          lyrics_hash.delete(word)
        when lyrics_hash[word]
          lyrics_hash[word] =  lyrics_hash[word] + 1
        else
          puts "error"
      end
    end
    lyrics_hash
  end
end