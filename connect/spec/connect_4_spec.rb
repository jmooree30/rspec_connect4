require_relative 'connect_4'

describe Board do

	let(:board) {Board.new}

	describe ".drop_disc" do
	  context "given a column number,and a string" do 
	    it "drops the string to the lowest open spot on the grid" do
	      board.drop_disc(0,"x") do 
	      expect(@board[6][0]).to eql("x")
          end 
        end
      end
    end 
end


