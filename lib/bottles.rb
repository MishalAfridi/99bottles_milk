class Bottles
  def verse(n)
    first_verse = "#{n} "
    first_verse = "No more " if n == 0
    first_verse += "bottles " unless n == 1
    first_verse += "bottle " if n == 1
    first_verse += "of milk on the wall, "
    first_verse += "#{n} " unless n == 0
    first_verse += "no more " if n == 0
    first_verse += "bottles " unless n == 1
    first_verse += "bottle " if n == 1
    first_verse += "of milk.\n"
    first_verse += "Take " unless n == 0
    first_verse += "one " unless n == 0 || n == 1
    first_verse += "it " if n == 1
    first_verse += "down and pass it around, " unless n == 0
    first_verse += "Go to the store and buy some more, " if n == 0
    first_verse += "#{n-1} " unless n-1 <= 0
    first_verse += "no more " if n == 1
    first_verse += "99 " if n == 0
    first_verse += "bottles " unless n == 2
    first_verse += "bottle " if n == 2
    first_verse += "of milk on the wall.\n"
  end

  def verses(high, low)
    (low..high).map { |n| verse(n) }.reverse().join("\n")
  end

  def song
    verses(99, 0)
  end

end