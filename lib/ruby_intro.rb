# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum()
  # YOUR CODE HERE
end

def max_2_sum arr
  return arr.max(2).sum()
  # YOUR CODE HERE
end

def sum_to_n? arr, n
  sorted_arr = arr.sort
  low = 0
  high = arr.length() - 1
  while low < high do
    x = sorted_arr[low]
    y = sorted_arr[high]
    if x + y == n 
      return true
    elsif x + y < n
      low += 1
    else
      high -= 1
    end
  end
  
  return false
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  return "Hello, " + name
  # YOUR CODE HERE
end

def starts_with_consonant? s
  return s.match?(/^(?=[a-zA-Z])(?=[^aeiouAEIOU])/)
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return s.match?(/^(0|00)$/) || s.match?(/^[01]+$/) && s.match?(/00$/)
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    if @isbn == "" || @price <= 0
      raise ArgumentError
    end
  end
  
  def price_as_string
    return "$" + sprintf("%0.02f", price)
  end

end
