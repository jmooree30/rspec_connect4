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

  def win_horizontal
    @board.each do |row|
      row.each_cons(4) do |element| 
        if element == ["x","x","x","x"] 
          puts "\n You win!"
            return true
        end 
        if element == ["o","o","o","o"]
          puts "\n You win!"
            return true
        end
      end 
    end
  end

  def win_vertical
    @n = 0
    until @n == 7
        @column = Array.new
        @board.each do |element|
            @column <<  element[@n]
            @column.each_cons(4) do |cons|
              if cons == ["x","x","x","x"]
              puts "\n You win!"
                return true
                break 
              end
              if cons == ["o","o","o","o"]
              puts "\n You win!"
                return true
                break
              end  
            end
        end
        @n += 1
    end
  end

  def win_diagnal_lr
    counter = 0
    until counter == 4
      @n = counter 
      @z = 0
      until @z == 3 
        @diagnal_array = Array.new 
        @board[@z..5].each do |element|
          @diagnal_array << element[@n]
          @n +=1
          @diagnal_array.each_cons(4) do |cons|
            if cons == ["x","x","x","x"]
              puts "\n You win!"
              return true 
              break 
            end
            if cons == ["o","o","o","o"]
              puts "\n You win!"
              return true
              break
            end
          end
        end
        @n = 0
        @z +=1
      end
      counter +=1
    end
  end

  def win_diagnal_rl
    counter = 6
    until counter == 3
      @n = counter 
      @z = 0
      until @z == 3 
        @diagnal_array = Array.new 
        @board[@z..5].each do |element|
          @diagnal_array << element[@n]
          @n -=1
          @diagnal_array.each_cons(4) do |cons|
            if cons == ["x","x","x","x"]
              puts "\n You win!"
              return true 
              break 
            end
            if cons == ["o","o","o","o"]
              puts "\n You win!"
              return true
              break
            end
          end
        end
        @n = 0
        @z +=1
      end
      counter -=1
    end
  end


end
# =)))