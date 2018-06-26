class TopTenIslandsCliGem::Island

  attr_accessor :name, :url, :discription

  ALL = []

  def initialize(name=nil, url=nil, discription=nil)
    @name = name
    @url = url
    ALL.push(self)
  end

  def get_discription
    @discription ||= TopTenIslandsCliGem::Scraper.get_island_discription(@url)
  end

  def self.all
    ALL.reverse
  end

  def self.create_islands_from_hash
    islands_array = TopTenIslandsCliGem::Scraper.get_islands_array

    islands_array.each do |island_hash|
      islands = self.new(island_hash[:name], island_hash[:url])
    end

  end



end
