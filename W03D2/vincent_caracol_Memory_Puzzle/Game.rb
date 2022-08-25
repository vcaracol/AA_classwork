require_relative "Board.rb"
require_relative "HumanPlayer.rb"
require_relative "ComputerPlayer.rb"
require "byebug"


class Game

    attr_reader :p1, :board, :size

    def initialize(size)
        @board = Board.new(size)
        @board.populate
        @previous = ""
        @over = false
        @guessed_position = ""
        @p1 = HumanPlayer.new("p1")
    end

    def play
        while @over == false
            puts "\e[2J\e[f"
            @board.render
            make_guess(@p1.prompt) 
            puts "\e[2J\e[f"
            @board.render 
            make_guess(@p1.prompt2)
            sleep(3)
            puts "\e[2J\e[f"
            if @board.won? 
                @over = true
            end
        end
        puts "\e[2J\e[f"
        puts "\n\n\n\n\n"
        puts "Winner!"
        puts "\n\n\n\n\n\n\n"
    end

    def make_guess(pos)
        # debugger
        @board.reveal(pos)
        @guessed_position = @board[pos]
        if @previous == "" 
           @previous = @guessed_position
        elsif @guessed_position.value.to_s != @previous.value.to_s 
            puts "\e[2J\e[f"
            @board.render 
            puts 'you suck'
            @guessed_position.hide
            @previous.hide
            @previous = ""
        else 
            puts 'good guess'
            @previous = ""
        end 
    end

end