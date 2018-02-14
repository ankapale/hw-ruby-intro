# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    if arr.length() == 0
       return 0
    end
   sum = 0
   arr.each { |a| sum+=a } 
   return sum
  
end

def max_2_sum arr
  if arr.length == 0
     return 0
  elsif arr.length == 1
     return arr[0]
  else 
     return sum(arr.sort.last(2))
  end
end

def sum_to_n? arr, n
  if arr.length() <= 1
     return false
  end
  for i in 0..arr.length()
      for j in 0..(i-1)
         if (arr[i].to_i() + arr[j].to_i() == n)
            return true
         end
      end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s[0] =~ /[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]/
     return true
  else 
     return false
  end
end

def binary_multiple_of_4? s
  if s == ''
     return false
  end
  if s.match(/[^01]/)
    return false
  end
  bin_val = s.to_i(base=2)
  if bin_val%4 == 0
     return true
  else
     return false
  end
end

# Part 3

class BookInStock
   attr_accessor :isbn, :price
   def initialize(isbn, price)
       if isbn == ''
          raise ArgumentError
       end
       if price <= 0
          raise ArgumentError
       end
       @isbn = isbn
       @price = price
   end
   def price_as_string
       return '$' + sprintf('%.2f', @price)
   end
end
