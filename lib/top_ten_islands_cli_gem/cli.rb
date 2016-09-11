class TopTenIslands::Cli

  def start
    TopTenIslands::Scraper.create_islands
    puts " "
    puts "Welcome to the Worlds Top Islands to visit!!"
    puts " "
    list
    discription
  end

  def list
    TopTenIslands::Island.all.each.with_index(1) {|island, index| puts "#{index}. #{island.name}"}
  end

  def discription
    @input = 0
    #binding.pry
    until @input.between?(1,10)
      puts " "
      puts "What number island would you like to read about?"
      @input = gets.chomp.to_i
    end
    #binding.pry
    puts ""
    puts "--------#{TopTenIslands::Island.all[@input-1].name}--------"
    puts ""
    puts TopTenIslands::Island.all[@input-1].get_discription
    puts ""
    ending
  end

  def ending
    input = ""
    until input == "y" || input == "n"
      puts "Would you like to read about another island? Y or N"
      input = gets.chomp.downcase
    end
      case input
      when  "y"
        discription
      when  "n"
        puts "Hope to see you come over and visit #{TopTenIslands::Island.all[@input-1].name} real soon!!"
      end

  end

end
