class Bottles
  def song
    verses(99, 0)
  end
  
  def verses(upper, lower)
    upper.downto(lower).map { |n| verse(n) }.join("\n")
  end
  
  def verse(number)
    bottle_number = BottleNumber.for(number)

    "#{bottle_number} ".capitalize + 
    "of milk on the wall, " + 
    "#{bottle_number} of milk.\n" +
    "#{bottle_number.action}, " + 
    "#{bottle_number.successor} " + 
    "of milk on the wall.\n"
  end
end

class BottleNumber
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def self.for(number)
    case number
    when 0
      BottleNumber0
    when 1
      BottleNumber1
    when 6
      BottleNumber6
    else
      BottleNumber
    end.new(number)
  end

  def to_s
    "#{quantity} #{container}"
  end

  def quantity
    number.to_s
  end

  def container
    "bottles"
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def pronoun
    "one"
  end

  def successor
    BottleNumber.for(number - 1)
  end
end

class BottleNumber0 < BottleNumber
  def quantity
    "no more"
  end

  def action
    "Go to the store and buy some more"
  end

  def successor
    BottleNumber.for(99)
  end
end

class BottleNumber1 < BottleNumber
  def container
    "bottle"
  end

  def pronoun
    "it"
  end
end

class BottleNumber6 < BottleNumber 
  def quantity
    1
  end

  def container
    "six-pack"
  end
end