class Bottles
  def verse(num)
    case num
    when 0
      "No more bottles of milk on the wall, no more bottles of milk.\n" + 
      "Go to the store and buy some more, 99 bottles of milk on the wall.\n"
    when 1
      "1 bottle of milk on the wall, 1 bottle of milk.\n" + 
      "Take it down and pass it around, no more bottles of milk on the wall.\n"
    when 2
      "2 bottles of milk on the wall, 2 bottles of milk.\n" + 
      "Take one down and pass it around, 1 bottle of milk on the wall.\n"
    else
      "#{num} bottles of milk on the wall, #{num} bottles of milk.\n" +
      "Take one down and pass it around, #{num-1} bottles of milk on the wall.\n"
    end
  end

  def verses(upper, lower)
    upper.downto(lower).map { |n| verse(n) }.join("\n")
  end

  def song
    verses(99, 0)
  end

end