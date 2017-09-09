 class GeniusTrack

    def initialize(url)
      @url = url
    end

    def info
      Scraper.new(InfoScraper.new).scrape(@url)
    end

    def lyrics
      Scraper.new(TrackScraper.new).scrape(@url)
    end
 end

