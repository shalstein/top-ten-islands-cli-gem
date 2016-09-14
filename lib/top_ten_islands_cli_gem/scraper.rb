class TopTenIslandsCliGem::Scraper

  def self.get_page
    Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice-Islands"))
  end

  def self.create_islands
    islands_array = []
    get_page.css(" .mainName").each do |island|
      island_hash = {}
       island_hash[:name] = island.text.strip
       island_hash[:url] = "https://www.tripadvisor.com#{island.css("a").attribute("href").text}"
       islands_array.push(island_hash)
    end
    islands_array
  end

  def self.get_island_discription(url=nil)
    Nokogiri::HTML(open(url)).css(" .ermb_text").css(" .content").text.strip
  end

end
