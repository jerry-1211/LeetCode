import java.util.Collections;

class Solution {
    public int maxArea(int[] height) {

        int right = height.length - 1; 
        int left = 0 ;

        int area = 0;

        while(true){
            int h = Math.min(height[left], height[right]); 
            int w = Math.abs(left - right); 
            
            area = Math.max(area, h*w);
            
            if(height[left] <= height[right]){
                left ++ ;
            }else if(height[left] > height[right]){
                right -- ;
            }

            if (left >= right){
                break; 
            }

        }

        return area ;
    }
}