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
   end

   describe "rotate 'b'" do
      it "return ['a', 'c', 'f', 'g', 'h']" do
         @rot_cell.rotate('b').must_equal %w(a c f g h)
      end
   end

   describe "rotate 'm'" do
      it "return ['g', 'h', 'i', 'l', 'n', 'q', 'r', 's']" do
         @rot_cell.rotate('m').must_equal %w(g h i l n q r s)
      end
   end
end
