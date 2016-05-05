# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  count_map=Hash.new
  nums.each do |num|
    if count_map[num].nil?
      count_map.store num,1
    else
      count_map.store num,count_map[num]+1
    end
    return num if count_map[num]>nums.size/2
  end    
end

#design
=begin
Just store all the counts in a map and check every time
=end

#test case
#=begin
a=[1,1,2,2,3,3,3,3,5,5,5,5,5,5,5,5,5,5]
b=[6,5,5]
puts "input: #{a} , output: #{majority_element(a)}"
puts "input: #{b} , output: #{majority_element(b)}"
#=end
