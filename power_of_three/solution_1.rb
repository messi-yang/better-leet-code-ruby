# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
  n/=3 while n>1&&n%3==0
  n==1?true:false
end

#design
=begin
Just keep dividing and jump if it not statisfied the qualification of power of three
=end

#test case
#=begin
a=4
b=1
c=18
d=81
e=243
puts "input: #{a} , output: #{is_power_of_three(a)}"
puts "input: #{b} , output: #{is_power_of_three(b)}"
puts "input: #{c} , output: #{is_power_of_three(c)}"
puts "input: #{d} , output: #{is_power_of_three(d)}"
puts "input: #{e} , output: #{is_power_of_three(e)}"
#=end
