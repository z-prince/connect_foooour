# frozen_string_literal: false

require './lib/player'
require 'pry'
# This class will allow Connect-4 to be played
class Game
    def initialize
        board = Board.new
        @player = Player.new(board)
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
        @player.session.space.each do |draw|
            @player.session.space[draw].negative? 
    end

    def check_horizontal; end

    def check_vertical; end

    def check_diagonal; end
end


if @player.session.space.values == [-1, -1, -1, -1, -1, -1, -1]