# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0, :+)
end

def max_2_sum arr
  sum(arr.max(2))
end

def sum_to_n? arr, n
  if arr.empty?
    false
  else
    (arr.empty? && n.zero?) || arr.permutation(2).any? { |a, b| a + b == n }
  end
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  /^[^aeiou\W]/i.match(s) != nil
end

def binary_multiple_of_4? s
  !s.empty? && s.chars.all? {|x| x =~ /[01]/} && s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError, "ISBN is empty"
    end
    if price <= 0
      raise ArgumentError, "Price negative or zero"
    end

    @isbn = isbn
    @price = price
  end

  attr_accessor :isbn, :price

  def price_as_string
    "$%.2f" % @price
  end


end
