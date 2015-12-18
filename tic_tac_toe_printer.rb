def print_grid(board)
  board.each_with_index do |row, row_index|
    row_line = ""
    row.each_with.index do |occupied, occupied_index|
      space = occupied
      if occupied.nil?
        space = " "
      end
      row_line += "#{occupied}"
      if occupied_index != row.size - 1
        row_line += "|"
      end
    end
    puts row_line

    if row_index != row_size - 1
      puts ('---' * row.size) + ('-' * (row.size - 1))
    end
  end
end
