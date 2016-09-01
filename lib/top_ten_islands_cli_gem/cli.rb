class TopTenIslandsCliGem::Cli

  def start
    input = ""
    while input == ""
      puts "Press a key to find out the the top 10 islands"
      input = gets.chomp
      list
      #discription
    end
  end

  def list
    TopTenIslandsCliGem::Island.all.each.with_index(1) {|island, index| puts "#{index}. #{island.name}"}
  end





end
