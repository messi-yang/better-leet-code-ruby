# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
  return 0 if m==0||n==0
  return 1 if m==1||n==1
  a,b,c=1,1,1
  for i in (1..m+n-2)
    a*=i
  end
  for i in (1..m-1)
    b*=i
  end
  for i in (1..n-1)
    c*=i
  end  
  a/b/c
end

#design
=begin
There are (m-1) rigths and (n-1) downs in a row by random.
If you have basic knowledge of posibility , the answer can be simply derived from
(m+n-2)!/((m-1)!(n-1)!)
=end


#test case
=begin
puts unique_paths(4,3)
puts unique_paths(4,6)
puts unique_paths(7,0)
puts unique_paths(1,1)
=end
