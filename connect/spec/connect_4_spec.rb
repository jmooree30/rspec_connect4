require 'board.rb'

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

    describe ".win_horizontal" do 
    	it "returns true if 4 elements are in a row horizontally" do 
    		board.drop_disc(0,"x")
    		board.drop_disc(1,"x")
    		board.drop_disc(2,"x")
    		board.drop_disc(3,"x")
    		expect(board.win_horizontal).to eql(true)
    	end
    end

    describe ".win_vertical" do 
    	it "returns true if 4 elements are in a row vertically" do 
    	    board.drop_disc(3,"x")
    		board.drop_disc(3,"x")
    		board.drop_disc(3,"x")
    		board.drop_disc(3,"x")
    		expect(board.win_vertical).to eql(true)
    	end
    end

    describe ".win_diagnal_rl" do
    	it "returns true if 4 elements are in a row from right to left diagnally" do 
    		board.drop_disc(0,"x")
    		board.drop_disc(1,"x")
    		board.drop_disc(1,"x")
    		board.drop_disc(2,"x")
    		board.drop_disc(2,"x")
    		board.drop_disc(2,"x")
    		board.drop_disc(3,"x")
    		board.drop_disc(3,"x")
    		board.drop_disc(3,"x")
    		board.drop_disc(3,"x")
            expect(board.win_diagnal_rl).to eql(true)
        end
    end

     describe ".win_diagnal_lr" do
    	it "returns true if 4 elements are in a row from left to right diagnally" do 
    		board.drop_disc(0,"x")
    		board.drop_disc(0,"x")
    		board.drop_disc(0,"x")
    		board.drop_disc(0,"x")
    		board.drop_disc(1,"x")
    		board.drop_disc(1,"x")
    		board.drop_disc(1,"x")
    		board.drop_disc(2,"x")
    		board.drop_disc(2,"x")
    		board.drop_disc(3,"x")
            expect(board.win_diagnal_lr).to eql(true)
        end
    end


end


