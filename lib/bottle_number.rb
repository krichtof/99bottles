class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def self.for(number)
    case number
    when 0
      ZeroBottleNumber.new
    when 1
      OneBottleNumber.new
    else
      BottleNumber.new(number)
    end
  end

  def container
    "bottles"
  end

  def pronoun
    if number == 1
      "it"
    else
      "one"
    end
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def quantity
    number.to_s
  end

  def successor
    BottleNumber.for(number - 1)
  end

end

class ZeroBottleNumber < BottleNumber
  def initialize
    @number = 0
  end
  def action
    "Go to the store and buy some more"
  end

  def quantity
    "no more"
  end

  def successor
    BottleNumber.for(99)
  end
end

class OneBottleNumber < BottleNumber
  def initialize
    @number = 1
  end
  def container
    "bottle"
  end

  def pronoun
    "it"
  end
end
