# When done, submit this entire file to the autograder.

# Part 1

# Sum of the entire array
def sum arr
  arr.reduce(0, :+)
end

# Find the sum of maximum 2 elements in the array
def max_2_sum arr
  if arr.length == 0 then
    return 0
  elsif arr.length == 1 then
    return arr[0]
  else
    return arr.max(2).inject(0,:+)
  end
end

# Check if two array elements sum to n
def sum_to_n? arr, n
  hash = Hash.new()
  for x in arr
    if hash[n-x] != nil then
      return true
    end
    hash[x]=true
  end
  return false
end

# Part 2

# Print hello concatenated with name
def hello(name)
  return "Hello, " << name
end

# Check if string s starts with consonant
def starts_with_consonant? s
  return /^[^aeiou\d\W]/i =~ s
end

# Check if given string s is a binary multiple of 4
def binary_multiple_of_4? s
  if s =~ /^[01]+$/ then
    return s.to_i(2) % 4 == 0
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn,:price
  
  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price<=0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    format("$%.2f", @price)
  end
end
