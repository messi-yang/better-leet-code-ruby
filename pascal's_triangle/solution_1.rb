# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  temp, res = [], [[1]]
  
  return [] if num_rows == 0
  return res if num_rows == 1
  (0...num_rows-1).each do |i|
    temp << 1
    for j in 0...i
      temp << res[i][j]+res[i][j+1]
    end
    temp << 1
    res << temp
    temp = []
  end
  return res
end

=begin
We should iterate loop for num_rows-1 times.
First and last element would always be 1, 
and do a for loop to get middle ones, just add neighbor elements and push into temp.
=end

# test case
=begin
num_rows = 0  #-> 0
num_rows = 1  #-> 1
num_rows = [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
=end
