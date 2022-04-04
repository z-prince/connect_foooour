# frozen_string_literal: false

require './lib/player'
require 'pry'
# This class will allow Connect-4 to be played
class Game
    attr_reader :player

    def initialize
        # board = Board.new
        @player = Player.new
    end

    def greeting
        p 'Welcome to CoNnEcT fOoOoUr!'
        p 'The wacky contest where vertical, horizontal, and diagonal domination are the name of the game!'
        p 'May the odds be ever in your favor!'
        p ''
        p 'Enter p to play. Enter q to quit.'
        choice = gets.chomp.downcase
        if choice == 'p'
            # is this a body
        else
            p "You're really missing out!"
        end
    end

# --------------- WIN CONDITIONS ---------------
      
    def draw
        if @player.session.space.values == [-1, -1, -1, -1, -1, -1, -1]
            puts "It's a DRAW!!!"
            exit
        end
    end

    def check_horizontal; end

    def check_vertical
        if  @player.session.board.each_value do |win| 
                # binding.pry
                 win == %w[. . X X X X] || %w[. X X X X .] || %w[X X X X . .]
            end
        end
    end

    def check_diagonal; end

    def triumph
        if check_vertical == true
            puts "Player WINS"
            exit
        end
    end
end

game = Game.new

loop do
# binding.pry
game.player.player_input
# game.player.comp_input
game.player.session.print_board
game.draw
game.triumph
end


# @player.session.board.each_key do |e|