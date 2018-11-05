require './quizzer'
require './player'

class Game
  def initialize
    @players = [Player.new("Player 1"), Player.new("Player 2"), Player.new("Player 3")]
    @quizr = Quizzer.new
  end

  def play
    puts " ===== Let's play! ===== "
    puts ""

    #main game loop
    while not check_win?

      get_live_players().each do |p|
        puts "===== New Turn ====="
        @quizr.askQ p
        print_state

        #dont ask other players if they are they only one left
        if check_win?
          break
        end
      end
    end

    puts "#{get_live_players[0].name} Has Won!"
  end

  def check_win?
    get_live_players.count == 1
  end

  def get_live_players
    @players.select { |p| not p.dead? }
  end

  def print_state
    @players.each do |p|
      p.print_state
      print " "
    end
    puts "\n\n"
  end

end