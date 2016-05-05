# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  res=Array.new(nums.length,1)
  for i in 0..nums.length-2
    res[i+1]=nums[i]*res[i]
  end
  tmp=1
  for i in 0..nums.length-1
    res[nums.length-1-i]*=tmp
    tmp*=nums[nums.length-1-i]
  end
  res
end


#test cases
p [24,12,8,6] == product_except_self([1,2,3,4])
p [0,0] == product_except_self([0,0])
p [48,24,72,36] == product_except_self([3,6,2,4])
