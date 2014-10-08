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
      rot_chars = []
      if char == 'a'
         rot_chars << 'b'
         rot_chars << 'g'
         rot_chars << 'f'
      end

      rot_chars.sort
   end
end
