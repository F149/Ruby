class Grains
CHESSBOARD_CELLS = 1..64

  def self.square(cell_number)
    fail ArgumentError unless CHESSBOARD_CELLS.include?(cell_number)
    number_of_grains = 2
    number_of_grains ** (cell_number - 1)
  end

  def self.total
    CHESSBOARD_CELLS.reduce {|acc, num| acc += square(num)}
  end
end