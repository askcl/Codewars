#  Description:
#  
#  You are going to be given an array of integers. Your job is to take that array
#  and find an index N where the sum of the integers to the left of N is equal to
#  the sum of the integers to the right of N. If there is no index that would make
#  this happen, return -1.

def find_even_index(arr)
  res = -1
  i = 0
  sum_left = 0
  sum_right = arr.inject(:+) - arr[0]
  while i <= arr.length - 1 do
    if sum_left == sum_right 
      res = i
      break
    end
    break if i == arr.length - 1
    i += 1
    sum_left = sum_left + arr[i - 1]
    sum_right = sum_right - arr[i]
  end
  return res
end
