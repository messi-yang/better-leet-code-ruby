# @param {Integer} n
# @return {String}
def convert_to_title(n)
  return nil if n.nil?
  val_map=Hash.new
  i=0
  ('A'..'Z').each do |cha|
    val_map.store i,cha
    i+=1
  end
  n-=1
  res=''
  while n>=1
    res=res.length!=0?"#{val_map[(n-1)%26]}#{res}" : "#{val_map[n%26]}#{res}"
    n/=26
    break if n==1 && res.length>=2 && res[0]=='Z' 
  end
  res.length==0?'A' : res
end

#design
=begin
Create one map to store values corresponding to characters.
And just see it as decimal , but it's 26 rather than 10
But notice that , it's not the perfect 26-and-carry number
I regard A as 0 in smallest digit while as 1 in others
=end

#test case
#=begin
a=1
b=28
c=53
d=701
e=52
f=676
g=703
i=1048
puts "input: #{a} , output: #{convert_to_title(a)}"
puts "input: #{b} , output: #{convert_to_title(b)}"
puts "input: #{c} , output: #{convert_to_title(c)}"
puts "input: #{d} , output: #{convert_to_title(d)}"
puts "input: #{e} , output: #{convert_to_title(e)}"
puts "input: #{f} , output: #{convert_to_title(f)}"
puts "input: #{g} , output: #{convert_to_title(g)}"
puts "input: #{i} , output: #{convert_to_title(i)}"
#=end
