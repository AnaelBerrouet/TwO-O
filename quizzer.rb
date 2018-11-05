require './question'

class Quizzer

  def initialize
    @questions = []
  end

  def askQ player
    @questions << Question.new
    q = @questions[-1]

    print "#{player.name}: "
    q.put
    a = gets.chomp.to_i

    if q.check a
      puts "#{player.name}: Great job!"
    else
      player.lose_life
      puts "#{player.name}: Wrong Answer!"
    end
  end

end