require './lib/bottle_number'

class Bottles
  def song
    verses(99,0)
  end

  def verses(starting, ending)
    starting.downto(ending).map{|number| verse(number)}.join("\n")
  end

  def verse(number)
    bottle_number = BottleNumber.for(number)
    bottle_successor = bottle_number.successor

    "#{bottle_number.quantity.capitalize} #{bottle_number.container} of beer on the wall, #{bottle_number.quantity} #{bottle_number.container} of beer.\n" +
    "#{bottle_number.action}, " +
      "#{bottle_successor.quantity} #{bottle_successor.container} of beer on the wall.\n"
  end

end
