# @param {Integer} x
# @return {Integer}
def reverse(x)
  return nil if x.nil?
  sign= x>=0?'':'-'
  res,abs='',x.abs
  while abs>=1
    res << (abs%10).to_s
    abs/=10
  end  
  res= x==0?0:(sign << res).to_i
  (res<-2147483648||res>2147483648)?0:res
end

#design
=begin
Judge the sign first and store it , then transfer integer to absolute number
Then parse the digits one by one and push to res ,finally return it with the sign.
But careful , if integer's out of range then you need to return 0
=end

#test case
#=begin
a=1
b=123
c=0
d=-1
e=-123
puts "intput: #{a} , output: #{reverse(a)}"
puts "intput: #{b} , output: #{reverse(b)}"
puts "intput: #{c} , output: #{reverse(c)}"
puts "intput: #{d} , output: #{reverse(d)}"
puts "intput: #{e} , output: #{reverse(e)}"
#=end
