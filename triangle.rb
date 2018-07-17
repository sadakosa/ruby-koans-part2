# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#

def checkIfPy (a, b, c)
  if c > b && c > a
    if a + b > c
      true
    else
      false
    end
  elsif b > c && b > a
    if a + c > b
      true
    else
      false
    end
  elsif a > b && a > b
    if c + b > a
      true
    else
      false
    end
  end
end

def triangle(a, b, c)
  # WRITE THIS CODE
  # begin 
  check = checkIfPy(a, b, c)


  if (a <= 0 || b <= 0 || c <= 0 || check == false)
    raise TriangleError
  elsif (a == b && b == c) 
    :equilateral
  elsif (a == b || b == c || c == a) 
    :isosceles
  else 
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
