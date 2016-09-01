class TopTenIslandsCliGem::Island

  attr_accessor :name, :url, :discription

  def initialize(name=nil, url=nil)
    @name = name
    @url = url
  end

end
