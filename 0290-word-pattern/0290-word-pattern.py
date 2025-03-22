class Solution:
    def wordPattern(self, pattern: str, s: str) -> bool:
        dic = {}
        lst = s.split(" ")

        if (len(lst) != len(pattern)):
            return False

        for i in range(len(pattern)):
            key = pattern[i]
        
            if dic.get(key) :
                if  dic[key] != lst[i] :
                    return False

            dic[key] = lst[i]  
        
        s = set()
        lst = []

        for i in dic:
            s.add(dic[i])
            lst.append(dic[i])

        if len(s) != len(lst):
            return False
        return True
        
        
        