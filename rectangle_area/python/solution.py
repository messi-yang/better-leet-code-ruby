class Solution(object):
    def computeArea(self, A, B, C, D, E, F, G, H):
        areA = (A-C)*(B-D)
        areB = (E-G)*(F-H)
        overlap = max(min(C,G)-max(A,E) , 0) * max(min(D,H)-max(B,F) , 0)
        return areA + areB - overlap

a = Solution()
print 16 == a.computeArea(-2,-2,2,2,-2,-2,2,2)