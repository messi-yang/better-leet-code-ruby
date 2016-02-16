# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  return nil if prices.nil?
  res,i=0,0
  for i in 0..prices.size-2
    res+=prices[i+1]-prices[i] if prices[i+1]>prices[i]
  end
  res
end

#design
=begin
Buy then sell once we find the stock value rises
=end

#test case
#=begin
a=[]
b=[0]
c=[1,4,2,1,0,7]
d=[9,8,7,6,5,4,3,2,1,0]
e=nil
puts "input: #{a} , output: #{max_profit a}"
puts "input: #{b} , output: #{max_profit b}"
puts "input: #{c} , output: #{max_profit c}"
puts "input: #{d} , output: #{max_profit d}"
puts "input: #{e} , output: #{max_profit e}"
#=end
