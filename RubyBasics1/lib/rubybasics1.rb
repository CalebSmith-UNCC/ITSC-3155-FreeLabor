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
  if arr.length == 1 || arr.empty?
    return false
  end
  
  for i in 0 .. arr.length-1 
    j = i + 1
    for j in j .. arr.length-1
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  return false
end