class GuessingGame
  def initialize(min, max)
    @guesses = Math.log2(max - min).to_i + 1
    @number = nil
    @min = min
    @max = max
  end

  def play
    @number = rand(@min..@max)
    while @guesses > 0
      puts "You have #{@guesses} guesses remaining."
      puts "Enter a number between #{@min} and #{@max}:"
      answer = guess_number
      provide_feedback(answer)
      break if answer == @number
      @guesses -= 1
    end
    display_result
  end

  def guess_number
    answer = ''
    loop do
      answer = gets.chomp.to_i
      break if (@min..@max).include?(answer)
      puts "Invalid entry. Please enter a number between #{@min} and #{@max}."
    end
    answer
  end

  def provide_feedback(answer)
    if answer < @number
      puts "That's too low!"
    elsif answer > @number
      puts "That's too high!"
    else
      puts "That's the number!"
    end
  end

  def display_result
    if @guesses > 0
      puts "You won!"
    else
      puts "You have no more guesses."
      puts "The number was #{@number}."
      puts "You lose."
    end
  end
end

GuessingGame.new(200, 2000).play
