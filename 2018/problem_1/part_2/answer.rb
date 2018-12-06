input_file = File.new('../input.txt')
changes = input_file.read.split("\n").map(&:to_i)
duplicates = []
seen = [0]

while duplicates.empty? do
  changes.each do |change|
    value = seen.last + change
    if seen.include?(value)
      puts value
      exit
    end
    seen.push(value)
  end
end
