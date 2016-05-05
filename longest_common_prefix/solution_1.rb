# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
   return nil if strs.nil?
   return "" if strs.size==0
   return strs[0] if strs.size==1

   output,offset="",-1
   
   for str in strs
     return "" if str.nil?
   end
   while offset+=1 do
     (0..(strs.size-2)).each do |i|
       return output if strs[i][offset].nil?||strs[i+1][offset].nil?||strs[i][offset]!=strs[i+1][offset]
     end
     output << strs[0][offset]
   end
end

#design
=begin
Just to compare the i-th character of all strings , if there's one not satisfying the condition , return the current ouput immediately
=end

#test case
=begin
a=['aaaaaa32','aaaaa1121','aa312','aaa4ffa']
b=['']
c=nil
d=[]
e=['sssssssssss','sssssssssssssss','ssssssssssssssss']
puts longest_common_prefix(a)
puts longest_common_prefix(b)
puts longest_common_prefix(c)
puts longest_common_prefix(d)
puts longest_common_prefix(e)
=end
