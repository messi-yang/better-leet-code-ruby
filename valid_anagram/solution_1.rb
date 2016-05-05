# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    return false if s.size != t.size
    s_arr = []
    t_arr = []
    for i in 0...s.size
        s_arr.push(s[i])
        t_arr.push(t[i])
    end
    s_arr.sort!
    t_arr.sort!
    for i in 0...s.size
        if s_arr[i] != t_arr[i]
            return false
        end
    end
    return true
end

=begin
First, if the size of s & t is different, it should be false.
Second, we turn string into array with every character separated.
Third, we sort these two arrays and check one by one.
If there is dismatch in between, t would not be anagram of s.
=end
