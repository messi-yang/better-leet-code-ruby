class Solution(object):
    def rotate(self, nums, k):
        """
        :type nums: List[int]
        :type k: int
        :rtype: void Do not return anything, modify nums in-place instead.
        """
        l = len(nums)
        nums[:] =  nums[l-(k%l):]+nums[:l-(k%l)]

nums = [1,2,3]
Solution().rotate(nums,2)
print [2,3,1] == nums