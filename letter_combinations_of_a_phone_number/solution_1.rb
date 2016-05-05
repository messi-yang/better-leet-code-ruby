# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
    return [] if digits == ''
    @key_list=['','','abc','def','ghi','jkl','mno','pqrs','tuv','wxyz']
    @res = []
    build_arr('',digits,0)
    @res
end

def build_arr(next_str,digits,index)
    @res << next_str if digits.length == next_str.length
    @key_list[digits[index].to_i].chars.each { |char| build_arr(next_str+char, digits, index+1) }
end

#design
=begin
referenced from other's solution
=end

#test case
#=begin
p letter_combinations('43')
#=end
