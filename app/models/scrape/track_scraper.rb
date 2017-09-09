class TrackScraper
  def scrape(url)
    Nokogiri::HTML(open(url)).xpath('//div[@class="lyrics"]').text
  end
end