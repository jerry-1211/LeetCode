class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        tmp_nums = sorted(nums)
        left = 0 
        right = len(nums)-1

        while(left <= right):
            if (tmp_nums[left] + tmp_nums[right]) == target :
                break
            
            if (tmp_nums[left] + tmp_nums[right]) < target :
                left += 1
            elif (tmp_nums[left] + tmp_nums[right]) > target :
                right -= 1

        lst = []
        for i in range(len(nums)):
            if tmp_nums[left] == nums[i]:
                lst.append(i)
                continue
            elif tmp_nums[right] == nums[i]:
                lst.append(i)
        
        return lst