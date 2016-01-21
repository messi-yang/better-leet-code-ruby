# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
    if m==0 || n==0 || (m==1&&n==1)
      return 0
    end
    a=1
    i=1
    (m+n-2).times{
        a*=i
        i+=1
    }
    b=1
    i=1
    (m-1).times{
        b*=i
        i+=1
    }
    c=1
    i=1
    (n-1).times{
        c*=i
        i+=1
    }
    return a/b/c
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
