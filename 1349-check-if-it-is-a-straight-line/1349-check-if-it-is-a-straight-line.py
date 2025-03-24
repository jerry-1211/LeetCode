class Solution:
    def checkStraightLine(self, coordinates: List[List[int]]) -> bool:

        lst = coordinates

        x_side = lst[0][0] - lst[1][0]
        y_side = lst[0][1] - lst[1][1]
        
        if(y_side):
            inc = x_side/y_side
        else:
            inc = float('inf')
              
        for i in range(len(lst)-1):
            x1,y1 = lst[i]
            x2,y2 = lst[i+1]

            dx = x1-x2 
            dy = y1-y2

            # 분모가 0일 때
            if (y1-y2) == 0:
                if inc != float('inf'):
                    return False
                continue

            if ((x1-x2) / (y1-y2)) != inc:
                return False

        return True

        