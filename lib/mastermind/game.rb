module Mastermind
  class Game
    def initialize(messenger)
      @messenger = messenger

    end

    def start(code)
      @code = code
      @messenger.puts "Welcome to Mastermind!"
      @messenger.puts "Enter guess:"

    end

    def guess(guess)
      result = []
      guess.each_with_index do |peg, index|
        if @code[index] == peg
          result << "b"
        elsif @code.include?(peg)
          result << "w"
        end
      end

      @messenger.puts result.sort.join
    end
  end
end
