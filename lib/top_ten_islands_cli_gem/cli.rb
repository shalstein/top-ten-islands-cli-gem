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
     until @input.to_i.between?(1,10) || @input == "list"
      puts " "
      puts "What number island would you like to read about? Or type list"
      @input = gets.chomp.downcase
    end

    if @input.to_i.between?(1,10)
      #binding.pry
      @input = @input.to_i
      puts ""
      puts "--------#{TopTenIslandsCliGem::Island.all[@input-1].name}--------"
      puts ""
      puts TopTenIslandsCliGem::Island.all[@input-1].get_discription
      puts ""
      ending
    elsif @input.downcase == "list"
      list
      discription
    end
  end

  def ending
    input = ""
    until input == "y" || input == "n" || input == "list"
      puts "Would you like to read about another island? Y,N or list"
      input = gets.chomp.downcase
    end
      case input
      when  "y"
        discription
      when  "n"
        puts "Hope to see you at #{TopTenIslandsCliGem::Island.all[@input-1].name} soon!!"
      when "list"
        list
        discription
      end

  end

end
