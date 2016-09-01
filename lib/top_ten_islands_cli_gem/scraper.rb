class TopTenIslandsCliGem::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice-Islands"))
  end

  def get_top_islands
    self.get_page.css(" .mainName").map do |island|
       island.text.strip
    end
  end

end
