# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    (0..haystack.length-needle.length).each do |i|
        return i if haystack[i,needle.length] == needle
    end
    -1
end

#design
=begin
Just check by extracting every substring with length = needle.length .
Return 1 if exists , -1 instead
=end

p 8 == str_str("iiiiiiiiappleiiiiiii","apple")
p 3 == str_str("abcbanana","banana")
p -1 == str_str("djsfkdsf","iiiii")