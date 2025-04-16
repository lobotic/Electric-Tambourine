//!OpenSCAD

difference() {
  translate([45, 0, 0]){
    cylinder(r1=45, r2=45, h=2, center=false);
  }

  translate([40, -25, 0]){
    cylinder(r1=1.5, r2=1.5, h=10, center=false);
  }
  translate([40, 25, 0]){
    cylinder(r1=1.5, r2=1.5, h=10, center=false);
  }
  translate([70, 30, 0]){
    cylinder(r1=1.5, r2=1.5, h=10, center=false);
  }
  translate([70, -30, 0]){
    cylinder(r1=1.5, r2=1.5, h=10, center=false);
  }
}
translate([45, -15, 25]){
  difference() {
    cube([16, 16, 50], center=true);

    translate([0, 0, 3]){
      union(){
        translate([0, 0, 5]){
          cube([12, 30, 24], center=true);
        }
        translate([0, 13, 18.7]){
          rotate([90, 0, 0]){
            cylinder(r1=0.75, r2=0.75, h=10, center=false);
          }
        }
        translate([0, 13, -8.7]){
          rotate([90, 0, 0]){
            cylinder(r1=0.75, r2=0.75, h=10, center=false);
          }
        }
      }
    }
  }
}