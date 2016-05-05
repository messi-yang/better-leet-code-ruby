# @param {Integer} n
# @param {Integer} k
# @return {Integer[][]}
def combine(n, k)
    res = []
    dfs 1 , [] , res , 0 , n , k
    res
end

def dfs(start , nums , res , count , n , k)
    res << nums if count == k
    for i in start..n
        count+=1
        dfs i+1 , nums+[i] , res , count , n , k
        count-=1
    end
end

p [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]] === combine(4, 2)