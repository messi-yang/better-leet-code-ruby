# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  return n if n<=2
  f1,f2=1,2
  (n-2).times{
    f2=f2+f1
    f1=f2-f1
  }
  f2
end

#design
=begin
It's just a mathematics' question can be solved by Fibonacci.
=end

#test case
#=begin
a=10
b=3
c=5
d=100
e=1
f=0
puts climb_stairs(a)
puts climb_stairs(b)
puts climb_stairs(c)
puts climb_stairs(d)
puts climb_stairs(e)
puts climb_stairs(f)
#=end
