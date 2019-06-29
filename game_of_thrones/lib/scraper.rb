class Scraper
  BASE_URL = "https://gameofthrones.fandom.com/wiki/Great_House?oldid=417926"
  

  def self.house(BASE_URL)
    html = Nokogiri::HTML(open(BASE_URL))
    general_info = html.css('div#mv-conent-text>ul').text.split("\n")
  end

