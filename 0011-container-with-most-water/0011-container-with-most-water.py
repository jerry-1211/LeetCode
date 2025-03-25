class Solution:
    def maxArea(self, height: List[int]) -> int:
        left = 0
        right = len(height) - 1
        area = 0
        

        while(True):
            area = max(area, min(height[left],height[right]) * abs(left-right))

            if height[left] <= height[right] :
                left += 1 
            elif height[left] > height[right] :
                right -= 1
            
            if left >= right:
                break 

        return area

        
        
            
            
            
        