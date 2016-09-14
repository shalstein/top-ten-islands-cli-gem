require "open-uri"
require "pry"
require "nokogiri"

require_relative "top_ten_islands_cli_gem/version"
require_relative "top_ten_islands_cli_gem/scraper.rb"
require_relative "top_ten_islands_cli_gem/island.rb"
require_relative "top_ten_islands_cli_gem/cli.rb"

module TopTenIslandsCliGem
end


x = TopTenIslandsCliGem::Island
x.create_islands
