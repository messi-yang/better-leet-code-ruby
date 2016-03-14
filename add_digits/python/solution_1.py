class Solution(object):
    def addDigits(self, num):
        """
        :type num: int
        :rtype: int
        """
        if num >= 10:
            sum = 0
            while num >=1:
                sum += num%10
                num /= 10
            num = sum
            return self.addDigits(num)
        else:
            return num

print 2 == Solution().addDigits(38)
print 1 == Solution().addDigits(388)