class Board
  attr_accessor :board
  def initialize 
    @board = Array.new(6){Array.new(7," ")}
  end 

  def display
      print "   0     1     2     3     4     5     6"
    @board.each do |i|
        print "\n"
        @draw = "+-----+-----+-----+-----+-----+-----+-----+"
        puts @draw
          i.each do |n|
              print "|  #{n}  "
          end
          print "|"
     end 
     print "\n"
      print @draw
  end

  def drop_disc(x,player)
      puts "\e[H\e[2J"
      if @board[5][x] == " "
          @board[5][x] = player
          display
      else
          counter = 0
          @board.each do |row|
              counter +=1
              if row[x] != " "
                  @board[counter-2][x] = player 
                  display
                  break   
              end
          end
      end 
  end 

end
