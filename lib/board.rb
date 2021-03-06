require "pry"
class Board 
    attr_accessor :cells  
        
    def initialize 
        reset! 
    end 

    def reset!
        @cells = [" "," "," "," "," "," "," "," "," "]
    end  
    
    def display
      puts " #{@cells[0]} | #{@cells[1]} | #{@cells [2]} "
      puts "-----------"
      puts " #{@cells[3]} | #{@cells[4]} | #{@cells [5]} "
      puts "-----------"
      puts " #{@cells[6]} | #{@cells[7]} | #{@cells [8]} "
    end 
    
    def position(input)
      cells[input.to_i-1]
    end 
    
    def full?
      !if @cells.include?(" ")
        true 
      end 
    end
    
    def turn_count
      turns_taken = []
      @cells.each do |position|
        if position == "X" || position == "O"
          turns_taken << position 
        end 
      end 
      turns_taken.length
    end 
    
    def taken?(input)
      if @cells[input.to_i-1] == "X" || @cells[input.to_i-1] == "O"
        true 
      else 
        false 
      end 
    end 
    
    def valid_move?(input)
      if input.to_i > 0 && input.to_i <= 9 && @cells[input.to_i - 1] == " "
        true 
      else 
        false
      end 
    end 
    
    def update(move, player) 
      @cells[move.to_i-1] = player.token  
    end 

end 
