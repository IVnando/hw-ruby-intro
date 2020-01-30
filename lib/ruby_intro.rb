# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.empty? 
    0
  else
    return arr.sum
  end
end

def max_2_sum arr
  if arr.empty? 
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr.sort!
    sum = arr[arr.length - 1] + arr[arr.length - 2]
    return sum
  end
end

def sum_to_n? arr, n
  if arr.empty?
    return false
  elsif arr.length == 1
    return false
  else
    arr.combination(2) {|c| return true if c.sum == n}
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.length == 0
    return false
  elsif s[0].match?(/\A[[:alpha:]]/) == false
    return false
  end
  
  if s.start_with?("a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
    return false
  end
  return true
end

def binary_multiple_of_4? s
  if s.length == 0
    return false
  elsif s.match?(/\D/) == true
    return false
  end
  num = s.to_i
  if num.modulo(4) == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError.new("Price cannot be negative") if price <= 0
    raise ArgumentError.new("ISBN cannot be empty") if isbn.length == 0
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string
    price = @price.to_s
    if price.match?(/\D/) == false
      puts "$#{price}.00"
      return "$#{price}.00"
    elsif price[price.length - 2] == '.'
      puts "$#{price}0"
      return "$#{price}0"
    else
      puts "$#{price}"
      return "$#{price}"
    end
  end
end
