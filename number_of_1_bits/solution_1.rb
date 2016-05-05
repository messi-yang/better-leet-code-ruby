# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  res=0
  while n>=1 
    res+=n%2
    n/=2
  end
  res
end

#design
=begin
=end

#test case
p hamming_weight(13)
p hamming_weight(1)
p hamming_weight(16)
