class TrackResponse
  def generate(data, track)
    response = {
        "artist" => track.info["artist"],
        "title" => track.info["title"],
        "data" => data.sort_by {|k,v| v}.reverse.first(25).unshift(['word', 'count'])
    }
    response
  end
end