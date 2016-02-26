# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
  return false if n == 0
  while n % 2 == 0
    n /= 2
  end
  n == 1 ? true : false
end

=begin
Use while loop to check if n can mod by 2,
and at last if n==1 then it should be the power of two.
The exception is 0, it should be false, and you couldn't let it run
the while loop, it will be infinite otherwise.
=end

# test case
=begin
n=-3  #=> false
n=0   #=> false
n=1   #=> true
n=4   #=> true
n=10  #=> false
=end
