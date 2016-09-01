class TopTenIslandsCliGem::Island

  attr_accessor :name, :url, :discription

  ALL = []

  def initialize(name=nil, url=nil)
    @name = name
    @url = url
    self.get_discription
    ALL.push(self)
  end

  def get_discription
    island_page = Nokogiri::HTML(open(@url))
    @discription = island_page.css(" .ermb_text").css(" .content").text.strip
  end

  def self.all
    ALL
  end








end
