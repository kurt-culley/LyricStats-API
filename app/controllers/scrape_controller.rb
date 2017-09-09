class ScrapeController < ApplicationController

  def track
    @track = GeniusTrack.new(params[:url])
    @lyrics_filtered = Filter.new(WordFilter.new).filter(@track.lyrics)
    @lyrics_data = LyricData.new(StandardData.new).generate(@lyrics_filtered)
    @response = Response.new(TrackResponse.new).generate(@lyrics_data, @track)
    json_response(@response)
  end

  def track_adlibs
    @track = GeniusTrack.new(params[:url])
    @lyrics_filtered = Filter.new(AdlibFilter.new).filter(@track.lyrics)
    @lyrics_data = LyricData.new(StandardData.new).generate(@lyrics_filtered)
    @response = Response.new(TrackResponse.new).generate(@lyrics_data, @track)
    json_response(@response)
  end

  def album
    @album = GeniusAlbum.new(params[:url])
    @lyrics_filtered = Filter.new(WordFilter.new).filter(@album.lyrics)
    @lyrics_data = LyricData.new(StandardData.new).generate(@lyrics_filtered)
    @response = Response.new(AlbumResponse.new).generate(@lyrics_data, @album)
    json_response(@response)
  end

  def album_adlibs
    @album = GeniusAlbum.new(params[:url])
    @lyrics_filtered = Filter.new(AdlibFilter.new).filter(@album.lyrics)
    @lyrics_data = LyricData.new(StandardData.new).generate(@lyrics_filtered)
    @response = Response.new(AlbumResponse.new).generate(@lyrics_data, @album)
    json_response(@response)
  end


  private

  def scrape_params
    params.permit(:url)
  end
end
