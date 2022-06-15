require 'pry-byebug'

class TicTacToe
  X = 'X'
  O = 'O'
  def initialize
    @players = ['', '']
    @game_board = Array.new(3) { Array.new(3, ' ') }
    select_marker
  end

  def select_marker
    puts 'Player 1 please choose X or O'
    loop do
      player_one = gets.chomp
      binding.pry
      if %w[X O].include?(player_one)
        @players[0] = player_one
        @players[1] = @players[0] == X ? O : X
        break
      else
        puts 'Incorrect input: Please enter X or O'
      end
    end
  end

  def print_board
    @game_board.each_with_index do |value, index|
      puts "#{value[0]}|#{value[1]}|#{value[2]}"
      puts '-----' if index != 2
    end
  end
end

new_game = TicTacToe.new

new_game.print_board
