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

  def discription
    input = ""
    until input > 0
      puts "What island would you like more information about, by number?"
      input = gets.chomp
    end
    TopTenIslandsCliGem::Island.all[input-1].get_discription
  end








end
