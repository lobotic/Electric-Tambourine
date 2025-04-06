//!OpenSCAD

cylinder(r1=50, r2=50, h=1, center=false);
difference() {
  cylinder(r1=5, r2=2, h=7, center=false);

  cylinder(r1=0.8, r2=0.8, h=7, center=false);
}