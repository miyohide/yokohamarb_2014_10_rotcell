require "minitest/autorun"
require_relative "../lib/rotcell"

describe RotCell do
   before do
      @rot_cell = RotCell.new
   end

   describe "rotate 'a'" do
      it "return ['b', 'f', 'g']" do
         @rot_cell.rotate('a').must_equal %w(b f g)
      end

      it "rot cell valid" do
         @rot_cell.rotate('a')
         @rot_cell.cells.must_equal %w(z z z z z z z
                                       z a f c d e z
                                       z g b h i j z
                                       z k l m n o z
                                       z p q r s t z
                                       z u v w x y z
                                       z z z z z z z)
      end
   end

   describe "rotate 'b'" do
      it "return ['a', 'c', 'f', 'g', 'h']" do
         @rot_cell.rotate('b').must_equal %w(a c f g h)
      end

      it "rot cell valid" do
         @rot_cell.rotate('b')
         @rot_cell.cells.must_equal %w(z z z z z z z
                                       z f b a d e z
                                       z g h c i j z
                                       z k l m n o z
                                       z p q r s t z
                                       z u v w x y z
                                       z z z z z z z)
      end
   end

   describe "rotate 'm'" do
      it "return ['g', 'h', 'i', 'l', 'n', 'q', 'r', 's']" do
         @rot_cell.rotate('m').must_equal %w(g h i l n q r s)
      end

      it "rot cell valid" do
         @rot_cell.rotate('m')
         @rot_cell.cells.must_equal %w(z z z z z z z
                                       z a b c d e z
                                       z f l g h j z
                                       z k q m i o z
                                       z p r s n t z
                                       z u v w x y z
                                       z z z z z z z)
      end
   end
end
