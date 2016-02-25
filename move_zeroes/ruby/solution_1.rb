# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  count = 0
  nums.each_with_index{|n,i| n==0 ? (count+=1) : (nums[i-count]=n)}
  (nums.length-count..nums.length-1).each do |i|
    nums[i] = 0
  end
end

=begin
Set count to do an offset.
When if comes to 0, then count++, we can know how many digits will the non-zero digit should move forward.
Finally, just insert 0s into the end of the array.
=end

# test
=begin
[0]              #=> [0]
[0,1]            #=> [1,0]
[2,0,5,67,0,5,0] #=> [2,5,67,5,0,0,0]
=end
