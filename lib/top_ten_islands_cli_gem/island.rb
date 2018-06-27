class TopTenIslandsCliGem::Island

  attr_accessor :name, :index, :discription

  ALL = []

  def initialize(name=nil, index=nil, discription=nil)
    @name = name
    @index = index
    ALL.push(self)
  end

  def get_discription
    @discription ||= TopTenIslandsCliGem::Scraper.get_island_discription(@index)
  end

  def self.all
    ALL
  end

  def self.create_islands_from_hash
    islands_array = TopTenIslandsCliGem::Scraper.get_islands_array

    islands_array.each do |island_hash|
      islands = self.new(island_hash[:name], island_hash[:index])
    end

  end



end
