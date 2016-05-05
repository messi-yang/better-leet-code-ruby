# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
    n = nums.size
    n*(n+1)/2 - nums.inject(0,&:+)
end

p 2 == missing_number([0,1,3])
