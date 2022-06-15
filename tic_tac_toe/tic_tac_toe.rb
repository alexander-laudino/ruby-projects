class TicTacToe
  game_board = Array.new(3) { Array.new(3, ' ') }

  def print_board(_array)
    _array.each_with_index do |value, index|
      puts "#{value[0]}|#{value[1]}|#{value[2]}"
      puts '-----' if index != 2
    end
  end
end
