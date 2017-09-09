class InfoScraper
  def scrape(url)
    artist = Nokogiri::HTML(open(url)).xpath('//div[@class="header_with_cover_art-primary_info"]').css('h2').css('a').text
    title = Nokogiri::HTML(open(url)).xpath('//div[@class="header_with_cover_art-primary_info"]').css('h1').text
    response = {
        'artist' => artist,
        'title' => title
    }
    response
  end
end