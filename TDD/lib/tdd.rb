class Array

  def my_uniq
    result = []
    self.each do |el|
      result << el unless result.include?(el)
    end
    result


  end


  def two_sum
    result = []
    self.length.times do |idx|
      (idx+1).upto(self.length - 1) do |idx2|
        if self[idx] + self[idx2] == 0
          result << [idx, idx2]
        end
      end
    end
    result
  end

  def my_transpose
    result = Array.new{Array.new(self.length, nil)}

    self.length.times do |index|
      temp = []
      self.length.times do |index2|
        temp << self[index2][index]
      end
      result << temp
    end
    result
  end

  def stock_picker
    result = []
    most_profit = 0
    self.length.times do |idx|
      (idx+1).upto(self.length - 1) do |idx2|
        if (self[idx2] - self[idx]) > most_profit
          most_profit = (self[idx2] - self[idx])
          result = [idx, idx2]
        end
      end
    end
    result
  end
end
