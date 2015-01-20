require_relative "lib/chess_board"

board = ChessBoard.new
puts "a2 a3 = #{board.move?(:a2, :a3)}"
puts "a2 a4 = #{board.move?(:a2, :a4)}"
puts "a2 a5 = #{board.move?(:a2, :a5)}"
puts "a7 a6 = #{board.move?(:a7, :a6)}"
puts "a7 a5 = #{board.move?(:a7, :a5)}"
puts "a7 a4 = #{board.move?(:a7, :a4)}"
puts "f5 f7 = #{board.move?(:f5, :f7)}"
