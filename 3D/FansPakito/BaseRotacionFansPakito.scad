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
  translate([45, 0, 0]){
    intersection() {
      cylinder(r1=10, r2=10, h=10, center=true);

      cube([15, 20, 20], center=true);

    }
  }
}
translate([45, 0, 7]){
  difference() {
    intersection() {
      cylinder(r1=12, r2=12, h=10, center=true);

      cube([19, 24, 20], center=true);

    }

    intersection() {
      cylinder(r1=10, r2=10, h=10, center=true);

      cube([15, 20, 20], center=true);

    }
    rotate([90, 0, 0]){
      cylinder(r1=1.5, r2=1.5, h=20, center=false);
    }
  }
}
union(){
  // BolaY derecha
  translate([35, 35, 0]){
    union(){
      difference() {
        translate([10, 0, 2]){
          cylinder(r1=10, r2=10, h=13, center=false);
        }

        translate([10, 0, 11]){
          sphere(r=8.5);
        }
        translate([10, 0, 11]){
          cube([22, 2, 16], center=true);
        }
        translate([10, 0, 11]){
          cube([2, 22, 16], center=true);
        }
      }
      translate([10, 0, 11]){
        sphere(r=8);
      }
    }
  }
  // BolaY Izquierda
  translate([35, -35, 0]){
    union(){
      difference() {
        translate([10, 0, 2]){
          cylinder(r1=10, r2=10, h=13, center=false);
        }

        translate([10, 0, 11]){
          sphere(r=8.5);
        }
        translate([10, 0, 11]){
          cube([22, 2, 16], center=true);
        }
        translate([10, 0, 11]){
          cube([2, 22, 16], center=true);
        }
      }
      translate([10, 0, 11]){
        sphere(r=8);
      }
    }
  }
  // Bola X delante
  translate([70, 0, 0]){
    union(){
      difference() {
        translate([10, 0, 2]){
          cylinder(r1=10, r2=10, h=13, center=false);
        }

        translate([10, 0, 11]){
          sphere(r=8.5);
        }
        translate([10, 0, 11]){
          cube([22, 2, 16], center=true);
        }
        translate([10, 0, 11]){
          cube([2, 22, 16], center=true);
        }
      }
      translate([10, 0, 11]){
        sphere(r=8);
      }
    }
  }
  // Bola 0,0
  union(){
    difference() {
      translate([10, 0, 2]){
        cylinder(r1=10, r2=10, h=13, center=false);
      }

      translate([10, 0, 11]){
        sphere(r=8.5);
      }
      translate([10, 0, 11]){
        cube([22, 2, 16], center=true);
      }
      translate([10, 0, 11]){
        cube([2, 22, 16], center=true);
      }
    }
    translate([10, 0, 11]){
      sphere(r=8);
    }
  }
}