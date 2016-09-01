class TopTenIslandsCliGem::Scraper

  def self.get_page
    Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice-Islands"))
    #binding.pry
  end

  def self.create_islands
    #binding.pry
    island_array = get_page.css(" .mainName").map do |island|
       i = TopTenIslandsCliGem::Island.new(island.text.strip,"https://www.tripadvisor.com#{island.css("a").attribute("href").text}")
    end
  end





end
