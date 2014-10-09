class RotCell
   attr_reader :cells

   CLOCK_WISE = [{from: -1, to: -8}, {from:  6, to: -1}, {from:  7, to: 6},
                 {from:  8, to:  7}, {from:  1, to:  8}, {from: -6, to: 1},
                 {from: -7, to: -6}, {from: -8, to: -7}]

   def initialize
      @cells = %w(z z z z z z z
                  z a b c d e z
                  z f g h i j z
                  z k l m n o z
                  z p q r s t z
                  z u v w x y z
                  z z z z z z z)
   end

   def rotate(char)
      chars = around_characters(char)
      update_cells(char)
      chars
   end

   private
   def around_characters(char)
      around_characters = []

      find_position = @cells.index(char)

      [-8, -7, -6, -1, 1, 6, 7, 8].each do |i|
         position_char = @cells[find_position + i]

         if position_char != 'z'
            around_characters << position_char
         end
      end

      around_characters.sort
   end

   def update_cells(char)
      find_position = @cells.index(char)

      tmp = ''
      CLOCK_WISE.each do |cw|
         tmp = @cells[find_position + cw[:to]] if tmp == ''
         @cells[find_position + cw[:to]] = @cells[find_position + cw[:from]]
      end
      @cells[find_position + CLOCK_WISE.last[:to]] = tmp
   end
end
