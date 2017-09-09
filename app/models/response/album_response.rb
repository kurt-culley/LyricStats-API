class AlbumResponse
  def generate(data, track)
    response = {
        "artist" => track.info["artist"],
        "title" => track.info["title"],
        "data" => data.sort_by {|k,v| v}.reverse.first(20).unshift(['word', 'count'])
    }
    response
  end
end