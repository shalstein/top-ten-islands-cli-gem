class TopTenIslandsCliGem::Cli

  def start
    TopTenIslandsCliGem::Scraper.create_islands
    puts " "
    puts "Welcome to the Worlds Top Islands to visit!!"
    puts " "
    list
    discription
  end

  def list
    TopTenIslandsCliGem::Island.all.each.with_index(1) {|island, index| puts "#{index}. #{island.name}"}
  end

  def discription
    input = 0
    #binding.pry
    until input.between?(1,10)
      puts " "
      puts "What number island would you like to read about?"
      input = gets.chomp.to_i
    end
    #binding.pry
    puts ""
    puts "--------#{TopTenIslandsCliGem::Island.all[input-1].name}--------"
    puts ""
    puts TopTenIslandsCliGem::Island.all[input-1].get_discription
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
        puts "Have an awesome day!!"
        #exit
      end

  end






end
