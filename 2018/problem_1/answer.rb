f = File.new('input.txt')
numbers = f.read.split("\n").map(&:to_i)
puts(numbers.sum)
