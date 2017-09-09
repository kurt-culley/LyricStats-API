class WordFilter
  def filter(lyrics)
    lyrics.downcase.gsub!(/[^\w']/, ' ').split(' ')
  end
end