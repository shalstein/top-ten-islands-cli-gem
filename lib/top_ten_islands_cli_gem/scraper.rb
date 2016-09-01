class TopTenIslandsCliGem::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice-Islands"))
  end

  def get_top_islands
    #binding.pry
    island_array = self.get_page.css(" .mainName").map do |island|
       island.text.strip
    end
    island_array.each.with_index(1) {|island, index| puts "#{index}. #{island}"}
  end


end
