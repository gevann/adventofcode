require_relative '../../input'

input = Input.new

class InventoryArray
  def initialize(input)
    @input_obj = input
    @by_lengths = @input_obj.fetch.flat_map do |str|
      str.split('').group_by{ |e| str.count(e) }.keys
    end
  end

  def twos
    @twos ||= @by_lengths.count(2)
  end

  def threes
    @threes ||= @by_lengths.count(3)
  end

  def checksum
    twos * threes
  end
end

puts InventoryArray.new(input).checksum
