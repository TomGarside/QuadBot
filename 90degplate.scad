
// 90 degree mountplate fpr quad robot 1 per leg 
// Thomas Garside 2019 

plateLen=30;
 
linear_extrude(height =plateLen){
polygon(points=[[0,0],
                [plateLen/2,0],
                [plateLen/2,plateLen/6],
                [plateLen/6,plateLen/6],  
                [plateLen/6,plateLen/2],
                [0,plateLen/2]]);
}