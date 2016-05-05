# @param {Integer} num
# @return {Boolean}
def is_ugly(num)
  return true if num == 1
  return false if num < 1
  
  factor = [2, 3, 5]
  
  (0...factor.length).each do |i|
    while num % factor[i] == 0
      num /= factor[i]
    end
  end
  num == 1 ? true : false
end

=begin
First we should exclude 1 and the numbers smaller than 1.
Second iterate three times to check if num has factor of 2,3,5.
If has, then divided by factor until no such factor.
Finally, if num == 1 means num only constructed by factor 2,3,5, and vice versa. 
=end

# test case
=begin
num = -1  #=> false
num = 1   #=> true
num = 30  #=> true
num = 14  #=> false
=end
