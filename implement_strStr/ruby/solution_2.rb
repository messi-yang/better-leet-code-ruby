# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    return 0 if needle.empty?
    if haystack.include?(needle)
        return haystack.index(needle)
    else
        return -1
    end
end

=begin
If needle is empty, the index must be the first place.
First use .include? method to check if needle is in haystack.
If it is, use .index method to find the index of the first occurence of needle in haystack.
If it isn't, return -1.
=end
