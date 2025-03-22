class Solution:
    def productExceptSelf(self, nums: List[int]) -> List[int]:
        
        if (nums.count(0)>=2) : 
            return  [0] * len(nums)
        
        without0_product = origina_product = 1
        
        for n in nums:
            if n == 0 : 
                origina_product = 0
                continue
            origina_product *= n
            without0_product *= n

        lst = []

        if (nums.count(0) == 1) :
            lst = [0] * len(nums)
            lst[nums.index(0)] = without0_product
            return  lst

        for n in nums:
            lst.append(origina_product//n)
        
        return lst

        