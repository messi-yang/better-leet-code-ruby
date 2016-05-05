# @param {Integer} x
# @return {Integer}
def reverse(x)
  return x if x.abs < 10
  len = x.abs.to_s.length
  new_x = 0
  
  if x >= 10
    (0...len-1).each do |i|
      new_x += (x%10)*10**(len-i-1)
      x = x/10
    end
    new_x += x
  elsif x <= -10
    x = x.abs
    (0...len-1).each do |i|
      new_x -= (x%10)*10**(len-i-1)
      x = x/10
    end
    new_x -= x
  end
  if new_x > 0
    new_x > 2**31-1 ? 0 : new_x
  else
    new_x < -(2**31) ? 0 : new_x
  end
end

=begin
It's a long long code, not very good.
First, if -10<x<10, return x.
Second, sort x into positive & negative integer, 
and use % and / to get the reverse integer.
Finally, we have to check the value of new_x, it should be between -2**31~2**31-1.
=end
