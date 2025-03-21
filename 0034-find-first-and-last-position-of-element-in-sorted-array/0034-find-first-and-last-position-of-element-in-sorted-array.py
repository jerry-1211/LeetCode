class Solution:
    def searchRange(self, nums: List[int], target: int) -> List[int]:
        
        left = 0 
        right = len(nums) - 1
        found = -1

        while(left<=right):
            mid = (left + right) // 2
            if (nums[mid] < target):
                left = mid + 1
            elif (nums[mid] > target):
                right = mid - 1
            elif (nums[mid] == target):
                found = mid
                break
        
        if(found == -1):
            return [-1,-1]

        
        left_mid = right_mid = mid
        while(left_mid-1 >= 0 and nums[left_mid-1] == target):
            left_mid -= 1

        while(right_mid+1 < len(nums) and nums[right_mid+1] == target):
            right_mid += 1
        
        return [left_mid, right_mid]