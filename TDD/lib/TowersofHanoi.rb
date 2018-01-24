require 'byebug'

class TowersofHanoi
   attr_accessor :towers, :disk

  def initialize
    @towers = [[1,2,3], [], []]
    @disk = 0
  end


  def get_move(idx)
    @disk = @towers[idx].first
    @towers[idx].shift
  end

 def validate_get(index)
    if index.between?(0, 3) == false
      raise ArgumentError
    elsif @towers[index].empty?
      return false
    else
      return true
    end
 end

  def validate_move(index)
    if @towers[index].empty? || @disk > @towers[index].first
      true
    else
      false
    end
  end


 def make_move(index)

   @towers[index].unshift(disk)
   @disk = 0

 end

 def won?
   if @towers[1] == [1,2,3] || @towers[2] == [1,2,3]
     return true
   else
     false
   end
 end

 def play
   until won?
     print @towers
     puts "Get a disk from tower: "
     move = gets.chomp.to_i
     if validate_get(move)
       get_move(move)
     else
       return false
     end

     print @towers
     puts "Place a disk on tower: "
     placemove = gets.chomp.to_i
     if validate_move(placemove)
       debugger
       get_move(placemove)
     end

   end
   puts "You win!"
 end


















  #
  # def make_move
  #   puts "Enter tower to put in (1, 2, 3) : "
  #   tower = gets.chomp.to_i
  #
  #   until validate_move?(tower)
  #     puts "Enter tower to put in (1, 2, 3) : "
  #     tower = gets.chomp.to_i
  #   end
  #     @tower[tower].unshift(@disk)
  #     @disk = 0
  #
  # end
  #
  # def play
  #   until won?
  #     print @tower
  #     print "\n"
  #     get_move
  #     make_move
  #   end
  #   puts "You win!"
  # end
  #
  # def validate_get?(tower)
  #   return false if @tower[tower].empty?
  #   return true
  # end
  #
  # def validate_move?(tower)
  #   if @tower[tower].first > @disk || @tower[tower].empty
  #     return true
  #   else
  #     return false
  #   end
  # end
  #
  # def won?
  #   if @tower[1] == [1,2,3] || @tower[2] == [1,2,3]
  #     return true
  #   else
  #     false
  #   end
  #
  #
  # end






end
