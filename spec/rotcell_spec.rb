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

end
