class RotCell
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
      around_characters(char)
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
end
