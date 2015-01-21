require_relative 'lib/moves/file_move_list'
require_relative 'lib/chess_board'

moves = FileMoveList.new('moves.txt')
board = ChessBoard.new

moves.each do |start, target|
    result = board.move?(start, target)
    puts "#{start} #{target} = #{result}"
end
