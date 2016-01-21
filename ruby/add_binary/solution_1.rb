# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  if a.nil?
    return nil
  end
  if b.nil?
    return nil
  end

  i=0
  factor=1
  a_val=0
  a.length.times{
    if a[a.length-i-1]=="1"
      a_val+=1*factor
    end
    factor*=2
    i+=1
  }
  i=0
  factor=1
  b_val=0
  b.length.times{
    if b[b.length-i-1]=="1"
      b_val+=1*factor
    end
    factor*=2
    i+=1 
  }

  sum = a_val + b_val
  if sum==0
    return "0"
  end
  output=""
  while sum>=1 do
    if sum%2==1
      output = "1" << output
    else
      output = "0" << output
    end
    sum/=2
  end
  return output
end

#design
=begin
transfer both of them to integer and sum up, then transfer them into binary.
=end

#test_case
=begin
a1,b1='110','1'
a2,b2='111','111'
a3,b3='0','0'
a4,b4=nil,'111'
a5,b5='101010','010101'
puts add_binary(a1,b1)
puts add_binary(a2,b2)
puts add_binary(a3,b3)
puts add_binary(a4,b4)
puts add_binary(a5,b5)
=end
