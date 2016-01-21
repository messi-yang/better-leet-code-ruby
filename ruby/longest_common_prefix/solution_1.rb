# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
   if strs.nil?
     return nil
   end
   if strs.size==0
     return ""
   end
   if strs.size==1
     return strs[0]
   end
   
   output=""
   index=0
   while true do
     (0..(strs.length-2)).each do |i|
       if strs[i].nil?||strs[i+1].nil?
         return output
       end
       if strs[i][index].nil?||strs[i+1][index].nil?||strs[i][index]!=strs[i+1][index]
         return output
       end
     end
     output << strs[0][index]
     index+=1
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
