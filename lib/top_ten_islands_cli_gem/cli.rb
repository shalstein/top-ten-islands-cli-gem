class TopTenIslandsCliGem::Cli

  def start
    TopTenIslandsCliGem::Island.create_islands_from_hash
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
    @input = 0
    #binding.pry
    until @input.between?(1,10) || @input == "list"
      puts " "
      puts "What number island would you like to read about? Or type list"

      string = gets.chomp
      @input = string.to_i if string.downcase != "list"
    end
    #binding.pry
    if @input > 0
      #binding.pry
      puts ""
      puts "--------#{TopTenIslandsCliGem::Island.all[@input-1].name}--------"
      puts ""
      puts TopTenIslandsCliGem::Island.all[@input-1].get_discription
      puts ""
      ending
    elsif @input == "list"
      list
      discription
    end
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
        puts "Hope to see you at #{TopTenIslandsCliGem::Island.all[@input-1].name} soon!!"
      end

  end

end
