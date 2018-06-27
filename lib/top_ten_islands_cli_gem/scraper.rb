class TopTenIslandsCliGem::Scraper

  def self.get_page
    # Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice-Islands"))
    Nokogiri::HTML(open("https://www.lonelyplanet.com/campaign/island-guide-2018/top-10-islands-for-2018/"))
    
  end

  def self.get_islands_array
    islands_array = []

    @@top_islands_page = self.get_page.css('.article__content')
    
    @@top_islands_page.css(' h3 > strong')
      .each_with_index do |island, index|
       island_hash = {}
       island_hash[:name] = island.text
       island_hash[:index] = index
       islands_array.push(island_hash)
    end
    islands_array
  end

  def self.get_island_discription(index)
    # Nokogiri::HTML(open(url)).css(" .ermb_text").css(" .content").text.strip
        
    @@top_islands_page.css('p')[index].text.strip
  end

end
