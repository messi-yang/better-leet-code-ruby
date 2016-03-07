class Solution(object):
    def missingNumber(self , nums):
        n = nums.__len__()
	return n*(n+1)/2 - sum(nums)



a = Solution()
print a.missingNumber([0,1,3])
