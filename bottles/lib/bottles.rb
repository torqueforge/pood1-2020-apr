class Bottles
  def song
    verses(99,0)
  end

  def verses(a,b)
    # Task 1:
    # Replace the a, b args above with variable names that are
    #   a) parallel in construction
    #     (i.e. if one is 'start' the other is 'stop' instead of 'ending')
    #   b) make it abvious that the two numbers represent a range
    #   c) make it clear that the first argument is the higher number.

    # Task 2:
    # Consider the following implentations. Both work.
    #
    # Implementation 2 is intuitively correct, but why? Can you explain in
    # terms of dependencies?
    #
    # If shameless green allows duplication, why is implementation 1 not
    # the best solution here in _this_ method.

    # Implementation 1 (evil pair)
    if a == 99
      "99 bottles of beer on the wall, " +
      "99 bottles of beer.\n" +
      "Take one down and pass it around, " +
      "98 bottles of beer on the wall.\n" +
      "\n" +
      "98 bottles of beer on the wall, " +
      "98 bottles of beer.\n" +
      "Take one down and pass it around, " +
      "97 bottles of beer on the wall.\n"
    else
      "2 bottles of beer on the wall, " +
      "2 bottles of beer.\n" +
      "Take one down and pass it around, " +
      "1 bottle of beer on the wall.\n" +
      "\n" +
      "1 bottle of beer on the wall, " +
      "1 bottle of beer.\n" +
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n" +
      "\n" +
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    end

    # Implementation 2
    a.downto(b).map {|i| verse(i)}.join("\n")
  end

  def verse(number)
    case number
    when 0
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, " +
      "1 bottle of beer.\n" +
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"
    when 2
      "2 bottles of beer on the wall, "  +
      "2 bottles of beer.\n" +
      "Take one down and pass it around, " +
      "1 bottle of beer on the wall.\n"
    else
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" +
      "Take one down and pass it around, #{number-1} bottles of beer on the wall.\n"
    end
  end

end
