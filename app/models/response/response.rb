class Response
  def initialize(filter)
    @filter = filter
  end

  def generate(data, obj = nil)
    @filter.generate(data, obj)
  end
end