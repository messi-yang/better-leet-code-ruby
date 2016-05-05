# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
    return true if nums == [0]
    can_pass = 0
    nums.size.times do |i|
        if nums[i] == 0
            (0..i).reverse_each do |j|
                return true if j + nums[j] >= nums.size-1
                can_pass+=1 if nums[j] > i-j || j == nums.size-1
            end
            return false if can_pass == 0
            can_pass = 0
        end
    end
    true
end

#design
=begin
False always happens when there exist 0s , so we just need to do judgement when we find 0
Once we find the 0 , we will check all the numbers before it to find numbers that can 
jump over 0 or immediately to the end
If we can't find anyone until we reach to the start index , then return false
But notice that , if 0 shows up in the last position , it means "Reach end successfully"   
=end

#test cases
p true == can_jump([1,2,1,3,0,2,1,3,0,2,1,1,1,0])
p true == can_jump([0])
p false == can_jump([1,2,3,0,1,1,1,0,2])
p true == can_jump([3,0,0,0])
p true == can_jump([4,2,0,0,1,1,4,4,4,0,4,0])