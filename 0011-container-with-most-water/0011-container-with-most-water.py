class Solution:
    def maxArea(self, height: List[int]) -> int:
        start, end = 0, len(height)-1
    
        answer = 0    
        while(start < end):
            
            # print(height[start],height[end], " ", start,end)
            
            answer = max(answer, min(height[start],height[end]) * (end-start))

            if(height[start] >=  height[end]):
                end -= 1 
            elif(height[start] <  height[end]):
                start += 1

        return answer