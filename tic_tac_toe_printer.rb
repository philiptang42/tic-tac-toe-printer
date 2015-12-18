def print_grid(board)
  board.each_with_index do |row, row_index|
    row_line = ""
    row.each_with_index do |occupied, occupied_index|
      space = occupied
      if occupied.nil?
        space = " "
      end
      row_line += " #{space} "
      if occupied_index != row.size - 1
        row_line += "|"
      end
    end
    puts row_line

    if row_index != row.size - 1
      puts ('---' * row.size) + ('-' * (row.size - 1))
    end
  end
end

board_a = [
  ['x', 'o', 'x'],
  ['x', nil, 'o'],
  ['x', 'o', nil]
]

board_b = [
  [nil, 'o', 'x'],
  ['x', 'o', nil],
  ['x', 'o', nil]
]

print_grid(board_a)

puts "\n \n"

print_grid(board_b)
