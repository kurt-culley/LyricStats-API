class GeniusAlbum

  def initialize(url)
    @url = url
  end

  def info
    Scraper.new(InfoScraper.new).scrape(@url)
  end

  def tracks
    tracks = []
    Nokogiri::HTML(open(@url)).xpath('//div[@class="chart_row-content"]').css('a').each do |url|
      tracks << url['href']
    end
    tracks
  end

  def lyrics
    Scraper.new(AlbumScraper.new).scrape(tracks)
  end

end
