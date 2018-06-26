class TopTenIslandsCliGem::Scraper

  def self.get_page
    # Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice-Islands"))
    Nokogiri::HTML(open("https://www.travelandleisure.com/worlds-best/islands"))
    
  end

  def self.get_islands_array
    islands_array = []

    get_page.css('.media-body.clearfix > h2')
    .each do |island|
       island_hash = {}
       island_hash[:name] = island.text.strip
      #  island_hash[:url] = "https://www.tripadvisor.com#{island.css("a").attribute("href").text}"
       islands_array.push(island_hash)
    end
    islands_array
  end

  def self.get_island_discription(url=nil)
    Nokogiri::HTML(open(url)).css(" .ermb_text").css(" .content").text.strip
  end

end
