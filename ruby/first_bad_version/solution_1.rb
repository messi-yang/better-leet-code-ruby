# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  (0..n).bsearch{|x| is_bad_version(x)}
end

=begin
There are two usages for bsearch.
Search will begin in the middle of the array.
One usage is when the block is larger than 0, 
it goes to right, otherwise it goes to left.
If block returns 0, it will stop searching and returns that number.

The other usage is when the block is true, it goes left,
and if it is false, it goes to left.
Finally it will return the last true value.
=end
 
