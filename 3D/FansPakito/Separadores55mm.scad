//!OpenSCAD

difference() {
  intersection() {
    cube([55, 5, 5], center=true);

    rotate([0, 90, 0]){
      cylinder(r1=2.8, r2=2.8, h=60, center=true);
    }

  }

  translate([-27.5, 0, 0]){
    rotate([0, 90, 0]){
      cylinder(r1=1.5, r2=1.5, h=10, center=false);
    }
  }
  translate([17.5, 0, 0]){
    rotate([0, 90, 0]){
      cylinder(r1=1.5, r2=1.5, h=10, center=false);
    }
  }
}