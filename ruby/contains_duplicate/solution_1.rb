# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  return nil if nums.nil?
  check=Hash.new
  nums.each do |num|
    return true if check[num]!=nil
    check.store num,1
  end
  false
end

#design
=begin
Just push all the number checked into map , and use the map to check whether it is duplicate or not
=end

#test case
#=begin
a=[0]
b=[]
c=nil
d=[1,2,4,3,7,1]
e=[1,2,3,4,5,6,7,8,9,0,11,21,326,32]
puts "input: #{a} , output: #{contains_duplicate(a)}"
puts "input: #{b} , output: #{contains_duplicate(b)}"
puts "input: #{c} , output: #{contains_duplicate(c)}"
puts "input: #{d} , output: #{contains_duplicate(d)}"
puts "input: #{e} , output: #{contains_duplicate(e)}"
#=end
