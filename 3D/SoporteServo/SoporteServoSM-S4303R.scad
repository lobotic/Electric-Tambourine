//!OpenSCAD

difference() {
  // Base ampliada
  cube([62, 30.5, 2], center=true);

  translate([27, 5, 0]){
    cylinder(r1=1.5, r2=1.5, h=10, center=true);
  }
  translate([27, -5, 0]){
    cylinder(r1=1.5, r2=1.5, h=10, center=true);
  }
  translate([-27, 5, 0]){
    cylinder(r1=1.5, r2=1.5, h=10, center=true);
  }
  translate([-27, -5, 0]){
    cylinder(r1=1.5, r2=1.5, h=10, center=true);
  }
}
// Base
cube([46, 30.5, 2], center=true);
union(){
  // Lateral izquierdo
  translate([-22, 0, 2.5]){
    cube([2, 30.5, 5], center=true);
  }
  difference() {
    // Ala lateral izquierda
    translate([-23, -4.5, 4]){
      scale([1, 0.65, 1]){
        rotate([0, 0, 90]){
          rotate([90, 0, 0]){
            {
              $fn=3;    //set sides to 3
              cylinder(r1=18, r2=18, h=2, center=false);
            }
          }
        }
      }
    }

    translate([0, 0, -5]){
      cube([46, 30.5, 18], center=true);
    }
  }
}
mirror([1,0,0]){
  union(){
    // Lateral derecho
    translate([-22, 0, 2.5]){
      cube([2, 30.5, 5], center=true);
    }
    difference() {
      // Ala lateral derecha
      translate([-23, -4.5, 4]){
        scale([1, 0.65, 1]){
          rotate([0, 0, 90]){
            rotate([90, 0, 0]){
              {
                $fn=3;    //set sides to 3
                cylinder(r1=18, r2=18, h=2, center=false);
              }
            }
          }
        }
      }

      translate([0, 0, -5]){
        cube([46, 30.5, 18], center=true);
      }
    }
  }
}
// Fondo
translate([0, 14.25, 10.35]){
  cube([46, 2, 20.7], center=true);
}
// Ala Izquierda
difference() {
  translate([-31, -15.25, -1]){
    cube([10, 5, 20.7], center=false);
  }

  translate([-25.15, -7, 5.3]){
    rotate([90, 0, 0]){
      cylinder(r1=1.5, r2=1.5, h=10, center=false);
    }
  }
  translate([-25.15, -7, 15.3]){
    rotate([90, 0, 0]){
      cylinder(r1=1.5, r2=1.5, h=10, center=false);
    }
  }
}
// Ala derecha
mirror([1,0,0]){
  difference() {
    translate([-31, -15.25, -1]){
      cube([10, 5, 20.7], center=false);
    }

    translate([-25.15, -7, 5.3]){
      rotate([90, 0, 0]){
        cylinder(r1=1.5, r2=1.5, h=10, center=false);
      }
    }
    translate([-25.15, -7, 15.3]){
      rotate([90, 0, 0]){
        cylinder(r1=1.5, r2=1.5, h=10, center=false);
      }
    }
  }
}