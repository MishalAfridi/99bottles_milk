# ...
  # ...
    # ...
      # ...
class Bottles
  def song
    verses(99, 0)
  end

  private

  def verses(starting, ending)
    starting.downto(ending).collect {|i| verse(i)}.join("\n")
  end

  def verse(number)
    case number
    when 0
      "#{quantity(number).capitalize} #{container(number)} of milk on the wall, " +
      "#{quantity(number)} #{container(number)} of milk.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of milk on the wall.\n"
    else
      "#{quantity(number).capitalize} #{container(number)} of milk on the wall, " +
      "#{quantity(number)} #{container(number)} of milk.\n" +
      "Take #{pronoun(number)} down and pass it around, " +
      "#{quantity(number-1)} #{container(number-1)} of milk on the wall.\n"
    end
  end

  def action(number)
  end

  def quantity(number)
    if number == 0
      "no more"
    else
      number.to_s
    end
  end

  def pronoun(number=:FIXME)
    if number == 1
      "it"
    else
      "one"
    end
  end

  def container(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end
end
