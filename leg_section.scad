


linear_extrude(height =5){
    difference() {
        polygon(points=[[0,-5],[0,5],[80,20],[80,-20]]);
        polygon(points=[[70,-6],[70,6],[47,6],[47,-6]]);
    }
}