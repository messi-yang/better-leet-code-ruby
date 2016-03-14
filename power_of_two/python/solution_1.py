class Solution(object):
    def isPowerOfTwo(self,n):
        """
        :type n: int
        :rtype: bool
        """
        if n == 0:
            return False
        while n %2 == 0:
            n/=2
            
        if n == 1:
            return True
        else:
            return False

print True == Solution().isPowerOfTwo(8)
print False == Solution().isPowerOfTwo(11)