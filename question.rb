class Question

  MAX_NUM = 21
  OPERATORS = ["+", '-', '*', '/']

  def initialize
    @operator = OPERATORS[rand(0...3)] #Excluding division on purpose
    @num1 = rand(1...MAX_NUM)
    @num2 = rand(1...MAX_NUM)
  end

  def put
    puts "What is #{@num1} #{@operator} #{@num2}?"
  end

  def get_answer
    case @operator
    when '+'
      @num1 + @num2
    when '-'
      @num1 - @num2
    when '*'
      @num1 * @num2
    when '/'
      @num1 / @num2
    end
  end

  def check a
    a == get_answer
  end

end