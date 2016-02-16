# @param {Integer} n
# @return {Boolean}
def can_win_nim(n)
    n % 4 != 0 ? true : false
end

=begin
The key point is "when 4 stones left".
If it is your turn & there are 4 stones left, 
then no matter how many stones you take you will lose,
and vice versa.
=end
