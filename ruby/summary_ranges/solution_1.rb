# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
  return nil if nums.nil?
  return [] if nums.size==0

  output,range_str,i=[],"",0
  nums.size.times{
    if range_str.length==0
      range_str << nums[i].to_s
    elsif nums[i]-1!=nums[i-1]
      range_str << "->#{nums[i-1].to_s}" if range_str != nums[i-1].to_s
      output << range_str
      range_str = "#{nums[i].to_s}"
    end
    
    if i==nums.size-1
      return output << range_str if range_str==nums[i].to_s
      return output << (range_str << "->" << nums[i].to_s)
    end
    i+=1
end

#design
=begin
First we initial range_str as a start, and examine all numbers by order.
Once we detect the number is not continuous , we complete the range_str and push to output
=end

#test case
=begin
a=[0,1,2,4,5,7]
b=[]
c=[3,4,6,7]
d=[1,3]
puts summary_ranges(a).to_s
puts summary_ranges(b).to_s
puts summary_ranges(c).to_s
puts summary_ranges(d).to_s
=end
