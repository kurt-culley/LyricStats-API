class Filter
  def initialize(filter)
    @filter = filter
  end

  def filter(lyrics)
    @filter.filter(lyrics)
  end
end