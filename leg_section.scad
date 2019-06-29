
//Quad robot leg section 2 per robot leg 
// Thomas Garside 2019

length=80;
servoOfset =10;
// servo hole function calculates points for polygon 
//scale for servo size 
servoWidth = 12; 
servoLen = 23; 
//calculates corner points for servo of specified size
function servoHole (x,y) = [[x+servoLen,y],[x+servoLen,y+servoWidth],[x,y+servoWidth],[x,y]];

topWidth=length/2;
bottomWidth=length/8;

linear_extrude(height =5){
    difference() {
        polygon(points=[[0,-bottomWidth/2],
                        [0,bottomWidth/2],
                        [length,topWidth/2],
                        [length,-topWidth/2]]);
        
        polygon(points=servoHole(length-(servoOfset+servoLen),
                                -servoWidth/2));
       
    }
}