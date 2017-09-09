class Scraper
  require 'open-uri'
  require 'nokogiri'

  def initialize(scraper)
    @scraper = scraper
  end

  def scrape(url)
    @scraper.scrape(url)
  end

end