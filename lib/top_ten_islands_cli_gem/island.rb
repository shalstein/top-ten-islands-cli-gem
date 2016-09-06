class TopTenIslandsCliGem::Island

  attr_accessor :name, :url, :discription

  ALL = []

  def initialize(name=nil, url=nil, discription=nil)
    @name = name
    @url = url
    ALL.push(self)
  end

  def get_discription
    @discription ||= Nokogiri::HTML(open(@url)).css(" .ermb_text").css(" .content").text.strip
  end

  def self.all
    ALL
  end


end
