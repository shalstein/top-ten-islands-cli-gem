class TopTenIslandsCliGem::Scraper

  def get_top_islands
    html = Nokogiri::HTML(open("https://www.tripadvisor.com/TravelersChoice-Islands"))
    binding.pry
  end

  def test
    puts "great!"
  end

end
