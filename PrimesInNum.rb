#  Description:
#  
#  Given a positive number n > 1 (Javascript, PHP: n >= 0) find the prime factor
#  decomposition of n. The result will be a string with the following form :
#  
#   "(p1**n1)(p2**n2)...(pk**nk)"
#   with the p(i) in increasing order and n(i) empty if n(i) is 1.
#  
#   Example: n = 86240 should return "(2**5)(5)(7**2)(11)"

def is_prime?(p)
  div = false
  for i in 2..(Math.sqrt(p))
    div = ((p % i) == 0) || div
  end
  !div
end

def find_count(n, div)
  count = 0
  while n % div == 0 do
    count += 1
    n = n / div
  end
  count
end

def print(primes, counts)
  s = ""
  primes.each_with_index.map do |item, index| 
    s = s + '(' + item.to_s
    if counts[index] > 1
      s = s + "**" +
      counts[index].to_s + ")"
    else
      s = s + ")"
    end
  end
  s
end

def primeFactors(n)
  pr = Array.new()
  count = Array.new()
  lim = Math.sqrt(n)
  for i in 2..lim
    if is_prime?(i) && n % i == 0
      pr.push(i)
      count.push find_count(n, i)
      n = n / (i ** count[-1])
      if is_prime?(n) && n > lim
        pr.push(n)
        count push 1
      end
    end
  end
  if pr != []
    p print(pr, count)
  else
    p "(" + n.to_s + ")"
  end
end
 
