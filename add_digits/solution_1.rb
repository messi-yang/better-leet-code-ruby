# @param {Integer} num
# @return {Integer}
def add_digits(num)
    return num if num == 0
    while true
        sum = 0
        while num != 0
            sum += num % 10
            num = num / 10
        end
        
        num = sum
        
        if num < 10
            break
        end
    end
    
    return num
end

=begin
We use while loop to conduct the calculation, if num >= 10 the iteration will continue,
and if num already < 10, it will break the loop & return num.
Inside the while loop is another while loop. We use loop to get the digit by "%" method,
and after getting digit we use num / 10 to get the residual digits. 
For example, 127 % 10 = 7, we can calculate sum += 7, and then num becomes num / 10 = 12,
and bacause num != 0, it will iterate again, 12 % 10 = 2, sum = 7 + 2 = 9, num = num / 10 = 1....
Until num < 10, iteration will break.
=end 

