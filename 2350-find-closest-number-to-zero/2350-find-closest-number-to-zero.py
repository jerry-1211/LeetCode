class Solution:
    def findClosestNumber(self, nums: List[int]) -> int:
        
        lst = []
        for i in range(len(nums)):
            curr = abs(0-nums[i])
            lst.append([curr,nums[i]])

        result = sorted(lst, key = lambda x:(x[0],-x[1]))
        return result[0][1]
                    

        
        