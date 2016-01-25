# @param {String} s
# @return {Integer}
def title_to_number(s)
  return nil if s.nil?
  val_map=Hash.new
  i=1
  ('A'..'Z').each do |cha|
    val_map.store cha,i
    i+=1
  end
  factor,res=1,0
  (1..s.size).each do |x|
    res+=val_map[s[-x]]*factor
    factor*=26
  end
  res
end

#design
=begin
Create one map to store values corresponding to characters.
And just see it as decimal , but it's 26 rather than 10
=end

#test case
#=begin
a='A'
b='X'
c='AA'
d='AB'
e='CNN'
puts "input: #{a} , output: #{title_to_number(a)}"
puts "input: #{b} , output: #{title_to_number(b)}"
puts "input: #{c} , output: #{title_to_number(c)}"
puts "input: #{d} , output: #{title_to_number(d)}"
puts "input: #{e} , output: #{title_to_number(e)}"
#=end
