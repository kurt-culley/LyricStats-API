class AdlibFilter
  def filter(lyrics)
    lyrics.downcase.scan(/\(([^)]+)\)/).flatten
  end
end