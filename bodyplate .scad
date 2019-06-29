

//Body plate for Quadroped robot 
// parameterized current set up for 9g servos 


//scale bottom plate with length 
length = 150;
//scale servo distance from edge 
servoOfset = 10;

// servo hole function calculates points for polygon 
//scale for servo size 
servoWidth = 12; 
servoLen = 23; 
//calculates corner points for servo of specified size
function stepprHole (x,y) = [[x+servoLen,y],[x+servoLen,y+servoWidth],[x,y+servoWidth],[x,y]];

// dont change (scales based on above parameters)
// |||||||||||
// VVVVVVVVVVV  
width=length/1.25;
linear_extrude(height=length/50){
    difference() {
        //body plate start to draw at origin 
        polygon(points=[[0,0],[0,length],[width,length],[width,0]]);
        //central triangles 
        polygon(points=[[length/5,width/4],[length/2.8,width/1.6],[length/5,width]]);
        polygon(points=[[length*(3/5),width/4],[length/2.273,width/1.6],[length*(3/5),width]]);
        polygon(points=[[length/3.34,width/4],[length/2,width/4],[length/2.5,width/2]]);
        polygon(points=[[length/3.34,width],[length/2,width],[length/2.5,width*(3/4)]]);
        //servo cut outs 
        //front
        polygon(points=stepprHole(servoOfset,servoOfset));
        polygon(points=stepprHole(width-(servoOfset+servoLen),servoOfset));
        //back
        polygon(points=stepprHole(servoOfset,length-(servoWidth+servoOfset)));
        polygon(points=stepprHole(width-(servoOfset+servoLen),length-(servoWidth+servoOfset)));    
    } 
}
