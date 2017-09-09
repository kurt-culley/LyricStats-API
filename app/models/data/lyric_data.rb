class LyricData
  def initialize(filter)
    @filter = filter
    @lyrics_hash
  end

  def generate(lyrics)
    @filter.generate(lyrics)
  end
end