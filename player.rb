
class Player

  attr_reader :name, :lives

  MAX_LIVES = 3

  def initialize name
    @name = name
    @lives = MAX_LIVES
  end

  def dead?
    @lives <= 0
  end

  def lose_life
    @lives -= 1
  end

  def print_name
    print @name
  end

  def print_state
    print "#{@name}: #{lives}/3"
  end
end