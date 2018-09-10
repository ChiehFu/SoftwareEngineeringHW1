# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  arr = arr.sort.reverse
  sum = 0
  i = 0
  while (i < arr.length && i < 2)
    sum += arr[i]
    i = i + 1;
  end
  return sum
end

def sum_to_n? arr, n
  h = {};
  arr.each do |num|
    if h[num] == true
      return true
    else 
      h[(n - num)] = true
    end
  end
  return false
end
d