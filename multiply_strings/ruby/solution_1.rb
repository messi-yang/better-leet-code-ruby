# @param {String} num1
# @param {String} num2
# @return {String}
def multiply(num1, num2)
  ( num1.to_i * num2.to_i ).to_s 
end

#test cases
p '12' == multiply('3','4')
p '68' == multiply('34','2')
p '2394647063063060668416' == multiply('213213213213213','11231232')
