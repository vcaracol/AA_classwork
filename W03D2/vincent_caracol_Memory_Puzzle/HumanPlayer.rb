require_relative "Game.rb"

class HumanPlayer 
    
    attr_reader :name, :board 

    def initialize(name)
        @name = name
    end

    def prompt 
        puts "#{@name} enter a position"
        input = gets.chomp
        position = [input[0].to_i,input[-1].to_i]
    end 

    def prompt2
        puts "#{@name} enter a second position"
        input = gets.chomp
        position = [input[0].to_i,input[-1].to_i]
    end

end 