# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
  res = []
  nums = nums.sort!
  (0..nums.size-4).each do |a|
    next if a > 0 && nums[a - 1] == nums[a]
    (a+1..nums.size-3).each do |b|
      next if b > a + 1 && nums[b - 1] == nums[b]
      c = b + 1
      d = nums.size - 1
      need = target - nums[a] - nums[b]
      while c < d
        if need == nums[c] + nums[d]
          res.push( [nums[a], nums[b], nums[c], nums[d]] ) 
          c+=1
          d-=1
          c+=1 while nums[c] == nums[c-1] && c < d
          d-=1 while nums[d+1] == nums[d] && c < d
          next
        end
        if need > nums[c] + nums[d]
          c+=1
        else
          d-=1
        end
      end
    end
  end
  res
end

#design
=begin
Referenced from Google 
Because we can't immediately find the four numbers we want . 
So we first determine the first two numbers first.
And last , we chose c and d to satisfied the given targe .
Just view the code for details
=end

#test cases
a = [[-2,-1,2,2],[-2,0,1,2],[-1,0,0,2],[-1,0,1,1],[0,0,0,1]]
p a === four_sum([1 , 0 , -1 ,  0 ,  -2 , 2 , 0 , 1 , 2 ], 1)