class AlbumScraper
  def scrape(url_array)
    lyrics = ''
    url_array.each do |url|
      lyrics << Nokogiri::HTML(open(url)).xpath('//div[@class="lyrics"]').text
    end
    lyrics
  end
end
