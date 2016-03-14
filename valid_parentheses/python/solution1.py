class Solution(object):
    def isValid(self, s):
        while s.find("{}")>=0 or s.find("[]")>=0 or s.find("()")>=0:
            s=s.replace("{}","")
            s=s.replace("()","")
            s=s.replace("[]","")
        if len(s)==0:
            return True
        else:
            return False

a = Solution()
print True == a.isValid("[]{}()")