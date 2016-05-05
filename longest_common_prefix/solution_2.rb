# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  strs = strs.sort
  len = strs.length
  min_str = strs.first
  count = 0
  res = ""
  
  return res if strs.empty?
  min_str.length.times do |i|
    for j in 1...len
      if strs[j][i] == min_str[i]
        count += 1
      end
    end
    if count == len-1
      res << min_str[i]
      count = 0
    else
      break
    end
  end
  return res
end

=begin
Exception is strs is empty, just return "".
Find the shortest string as the basis, and compare with other strings one by one.
Use count to decide if the characters with same indices are the same or not.
If the same, add to res, and if not, break the loop.
=end

=begin
strs = []  #=> ""
strs = ["abcdef","abcej","absc13"]  #=> "ab"
strs = ["abcdef","cbcej","bbsc13"]  #=> ""
=end
