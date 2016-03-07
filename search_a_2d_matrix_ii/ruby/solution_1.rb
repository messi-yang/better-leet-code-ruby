# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
    matrix.size.times do |i|
        if target>=matrix[i][0]
            return true if !matrix[i].bsearch{|x| target-x}.nil?
        end
    end
    false
end

#test cases
a=[
  [1,   4,  7, 11, 15],
  [2,   5,  8, 12, 19],
  [3,   6,  9, 16, 22],
  [10, 13, 14, 17, 24],
  [18, 21, 23, 26, 30]
]
p true == search_matrix(a,5)
p false == search_matrix(a,20)
p false == search_matrix(a,25)
p false == search_matrix(a,33)