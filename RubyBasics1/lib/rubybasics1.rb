# Lab 1
# Part I
def sum arr
  arr.sum
end

# Part II
def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    return arr.sort.last(2).sum
  end
end
# Part III
def sum_to_n? arr, n
  # YOUR CODE HERE
end