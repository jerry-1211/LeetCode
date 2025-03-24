class Solution {
    public boolean checkStraightLine(int[][] coordinates) {

        int x1 = coordinates[0][0] , y1 = coordinates[0][1];
        int x2 = coordinates[1][0] , y2 = coordinates[1][1];
        
        for(int i= 2 ; i < coordinates.length ; i++){
            int x0 = coordinates[i][0]; 
            int y0 = coordinates[i][1];

            if ((x1 - x0) * (y2 - y0) != (y1 - y0) * (x2 - x0))
{
                return false;
            }
        }
        return true;
    }
}