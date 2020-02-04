# Strings and Regular Expressions

# Part I
def hello(name)
  return "Hello, " + name
end

# Part II
def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty? 
    return false
  elsif s.start_with?(/[AEIOUaeiou#]/)
    return false
  else
    return true
  end
end

# Part III
def binary_multiple_of_4? s
  # YOUR CODE HERE
  value = s.to_i()
  if s.empty?
    return false
  elsif s.start_with?(/[a-zA-Z]/)
    return false
  elsif value%4 == 0
    return true
  else
    return false
  end
end
