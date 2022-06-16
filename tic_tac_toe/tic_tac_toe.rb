# require 'pry-byebug'

class TicTacToe
  X = 'X'
  O = 'O'
  @winning_combos = []
  @winner = false

  def initialize
    @players = ['', '']
    @game_board = Array.new(3) { Array.new(3, ' ') }
    play_game
  end

  private

  def select_markers
    puts ''
    puts 'Welcome to Tic Tac Toe'
    puts ''
    puts 'Player 1 please choose X or O'
    loop do
      player_one = gets.chomp
      if %w[X O].include?(player_one)
        @players[0] = player_one
        @players[1] = @players[0] == X ? O : X
        break
      else
        puts 'Incorrect input: Please enter X or O'
      end
    end
  end

  def select_square(turn = 0)
    loop do
      puts 'Select square to place marker'
      puts 'Enter row: 1 - 3'
      row = gets.chomp.to_i
      if (1..3).include?(row)
        row -= 1
      else
        puts 'Invalid row'
        next
      end
      puts 'Enter column: 1 - 3'
      column = gets.chomp.to_i
      if (1..3).include?(column)
        column -= 1
      else
        puts 'Invalid column'
        next
      end
      if @game_board[row][column] == ' '
        @game_board[row][column] = @players[turn]
      else
        puts 'Square already selects, please choose another'
        print_board
        next
      end
      print_board
      update_winning_combos
      break
    end
  end

  def play_round
    puts ''
    puts "Player 1: Place #{@players[0]}"
    select_square
    check_for_winner
    return 'Player 1' if @winner == true

    puts ''
    puts "Player 2: Place #{@players[1]}"
    select_square 1
    check_for_winner 1
    return 'Player 2' if @winner == true
  end

  def update_winning_combos
    top_row = @game_board[0]
    middle_row = @game_board[1]
    bottom_row = @game_board[2]
    first_column = [@game_board[0][0], @game_board[1][0], @game_board[2][0]]
    second_column = [@game_board[0][1], @game_board[1][1], @game_board[2][1]]
    third_column = [@game_board[0][2], @game_board[1][2], @game_board[2][2]]
    diag_one = [@game_board[0][0], @game_board[1][1], @game_board[2][2]]
    diag_two = [@game_board[0][2], @game_board[1][1], @game_board[2][0]]
    @winning_combos = [top_row, middle_row, bottom_row, first_column, second_column, third_column, diag_one, diag_two]
  end

  def check_for_winner(turn = 0)
    @winning_combos.each do |value|
      @winner = true if value.all? { |row| row == @players[turn] }
    end
  end

  def play_game
    select_markers
    game_won = nil
    game_won = play_round while game_won.nil?
    puts "#{game_won} wins"
  end

  def print_board
    puts ''
    @game_board.each_with_index do |value, index|
      puts "#{value[0]}|#{value[1]}|#{value[2]}"
      puts '-----' if index != 2
    end
    puts ''
  end
end

new_game = TicTacToe.new
