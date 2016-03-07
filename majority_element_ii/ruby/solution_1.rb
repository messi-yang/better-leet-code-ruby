# @param {Integer[]} nums
# @return {Integer[]}
def majority_element(nums)
    counts_map = Hash.new(0)
    nums.each{|num| counts_map[num]+=1}
    res = []
    counts_map.each{| k ,v | res << k if v > nums.size/3}
    res
end

#test cases
p [1,2] === majority_element([1,1,1,1,2,2,2,2,3,3,1,2])
p [1] === majority_element([1,1,1,1,3,1,2])