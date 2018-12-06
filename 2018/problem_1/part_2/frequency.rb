class Frequency
  attr_reader :duplicates

  def initialize(n)
    if n.is_a? Integer
      @level = n
      @history = [n]
    elsif n.is_a? Array
      first_level = n.shift
      @level = first_level
      @history = [first_level]
      n.each { |nn| change(nn) }
    end
  end

  def change(n)
    next_level = @level + n
    @history.push(next_level)
    @level = next_level
  end

  def duplicates
    @duplicates ||= @history.select { |lvl| @history.count(lvl) > 1 }
  end

  def inspect
    "<#{self.class.name} @level=#{@level}>"
  end
end
