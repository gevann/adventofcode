class Input
  def initialize(input_file = '../input.txt')
    @input_file = input_file
  end

  def fetch
    @input ||= File.new(@input_file).read.split("\n")
  end
end
