# File: factorial.rb
def factorial(n)
    product = 1
    while n > 0
      
      n -= 1
      binding.irb # Mystery new line!
      product *= n
    end
    product
  end
  
  p factorial(5)