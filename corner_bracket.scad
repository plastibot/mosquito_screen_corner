//translate([50, 0, 0])
//rotate([0, -22.5, 0])
//flat_corner();

mirror([0, 0, 1])
rotate([0, 22.5+180, 0])
angled_corner();



module flat_corner(){
    
    //corner
    difference(){
    
        translate([0, 0, -0.75/2])
        cube([19, 19, 7.35], center = true);
        
        translate([-14, -14, -2])
        cube([15, 15, 6.6], center=true);
        
    
    }
        
    
    //long arm
    difference(){
        
        translate([0, -24.5, 0])
        cube([15, 30, 6.6], center=true);
        
        translate([1, -27.5, -1])
        cube([9, 30, 4.7], center=true);
        
        translate([-10, -24.5, -1])
        cube([9, 30, 4.7], center=true);
        
        
        translate([5, -42.5, 0])
        rotate([0, 0, 45])
        cube([25, 15, 7.6], center=true);
        
        translate([-12, -42.5, 0])
        rotate([0, 0, -45])
        cube([25, 15, 7.6], center=true);
        
        translate([5, -38.5, -2.5])
        rotate([0, 0, 40])
        cube([25, 15, 7.6], center=true);
        
        translate([-1, -27.5, -4.9])
        rotate([-35, 0, 40])
        cube([25, 15, 4.7], center=true);
        
        
        
    }
    
    //short arm
    difference(){
        
        translate([ -17, 0, 0])
        cube([15, 15, 6.6], center=true);
        
        translate([-20, 1, -1])
        cube([15, 9, 4.7], center=true);
        
        translate([-17, -10, -1])
        cube([15, 9, 4.7], center=true);
        
    }
    
}

module angled_corner(){
    
    //corner
    difference(){
    
        translate([5.5, 0, -0.75/2])
        cube([7, 19, 7.35], center = true);
        
        translate([4.5, -9, 2])
        cube([9, 5, 6.6], center=true);
        
    
    }
    
    
    
    //long arm
    color("red")
    translate([2, 0, -4.4])
    rotate([0, -22.5, 0])
    difference(){
        
        union(){
            
            translate([9.5-3.3, -24.5+9.5, -7.5+3.3])
            cube([6.6, 49, 15], center=true);
            
            translate([6.5-0.75+0.05, 0, -4.1])
            cube([7.35, 19, 17], center = true);
            
        }
        
        translate([-1+9.5-3.3, -27.5, -8.5+3.3])
        cube([4.7, 30, 9], center=true);
        
        translate([-1.5+9.5-3.3, -22.5, -2.5+2.5+3.3])
        cube([5.7, 34, 4], center=true);
        
        translate([6.4, -40.5, -10])
        rotate([-45, 0, 0])
        cube([7.6, 25, 15], center=true);
        
        translate([6.4, -40.5, 8])
        rotate([45, 0, 0])
        cube([7.6, 25, 15], center=true);
        
        translate([3.75, -36.5, -10])
        rotate([-40, 0, 0])
        cube([7.6, 25, 15], center=true);
        
        //translate([1.3, -25.7, -3])
        //rotate([-40, 0, 0])
        //rotate([0, -35, 0])
        //#cube([4.7, 25, 15], center=true);
        
    }
    
    //short arm
    difference(){
        
        translate([-4, 1.5, 0])
        cube([15, 15, 6.6], center=true);
        
        translate([-7, 2.5, 1])
        cube([15, 9, 4.7], center=true);
        
        translate([-4, -8.5, 1])
        cube([15, 9, 4.7], center=true);
        
    }
    
}