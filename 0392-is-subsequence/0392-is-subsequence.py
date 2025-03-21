class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        lst_s = list(s)

        if not(s):
            return True

        for i in range(len(t)-1,-1,-1):
            if lst_s and (lst_s[-1] == t[i]):
                lst_s.pop()
        
        if lst_s:
            return False
        else:
            return True

