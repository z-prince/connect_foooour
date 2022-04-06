require 'pry'
require './lib/game'
require './lib/board'
require './lib/player'
require './lib/turn'

turn = Turn.new
turn.greeting
turn.turn_loop
