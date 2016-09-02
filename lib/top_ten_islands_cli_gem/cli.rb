class TopTenIslandsCliGem::Cli

  def start
      puts " "
      puts "Welcome to the Worlds Top Islands!!"
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
    TopTenIslandsCliGem::Island.all[input-1].name
    puts ""
    puts TopTenIslandsCliGem::Island.all[input-1].get_discription

  end





end
