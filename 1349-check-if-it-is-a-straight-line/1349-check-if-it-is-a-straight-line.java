class Solution {
    public boolean checkStraightLine(int[][] coordinates) {

        float x1 = coordinates[0][0] , y1 = coordinates[0][1];
        float x2 = coordinates[1][0] , y2 = coordinates[1][1];
        float inc ;

        if(y1-y2 == 0){
            inc = Float.POSITIVE_INFINITY;
        }else{
                inc = (x1-x2) / (y1-y2);
        }

        
        for(int i= 0 ; i < coordinates.length-1 ; i++){
            x1 = coordinates[i][0]; 
            y1 = coordinates[i][1];
            x2 = coordinates[i+1][0];
            y2 = coordinates[i+1][1];
            
            if(y1-y2 == 0){
                if (inc != Float.POSITIVE_INFINITY){
                    return false;
                }
                continue;
            }

            if ((x1-x2)/(y1-y2) != inc){
                return false;
            }
        }


        return true;
    }
}