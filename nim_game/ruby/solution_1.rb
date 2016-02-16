# @param {Integer} n
# @return {Boolean}
def can_win_nim(n)
  return nil if n.nil?
  return false if n%4==0
  true
end

#design
=begin
Because every one can chose 1~3 , so if there is 4 , whichever you pick , you're gonna lose.
And furthur if I find it's the number in times of 4 , I just keep it to minus by 4 in every round , then it will finally reach 4 , which is the case you must be losing the game.
=end

#test case
#=begin
a=1
b=3
c=8
d=7
e=nil
puts "input:#{a} , output:#{can_win_nim(a)}"
puts "input:#{b} , output:#{can_win_nim(b)}"
puts "input:#{c} , output:#{can_win_nim(c)}"
puts "input:#{d} , output:#{can_win_nim(d)}"
puts "input:#{e} , output:#{can_win_nim(e)}"
#=end
