class Solution:
    def numDifferentIntegers(self, word: str) -> int:
      
        s = ord('a') 
        e = ord('z')

        for alpha in range(s,e+1): 
            word = word.replace(chr(alpha)," ")

        lst = list(word.split(" "))

    

        result = set()

        for l in lst:
            if l != "":
                print(l)
                result.add(int(l) )
        
        return len(result)

        