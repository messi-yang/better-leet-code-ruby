# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
  temp, res = [], []
  len = nums.length
  n = 0
  
  while n != len
    temp << nums[n]
    while nums[n+1] == nums[n]+1
      temp << nums[n+1]
      n += 1
    end
    n += 1
    if temp.first != temp.last
      res << "#{temp.first}->#{temp.last}"
    else
      res << "#{temp.first}"
    end
    temp = []
  end
  
  return res
end

=begin
Two while loops solve the problem.
First loop goes for the indices of nums.length.
Second loop goes for the continuity of the neighbor numbers.
If it is continuous, then record it in the temp,
until it isn't, get the first & last number and add them into the res.
=end

# test case
=begin
nums = [-1,0,1,2,4,5,7]   #=> ["-1->2","4->5","7"]
=end
