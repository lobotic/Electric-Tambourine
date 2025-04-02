//!OpenSCAD

// pincho central
translate([-7, 0, 0]){
  rotate([0, 0, 180]){
    {
      $fn=3;    //set sides to 3
      cylinder(r1=14.5, r2=14.5, h=10, center=false);
    }
  }
}
// Pincho Izquierdo
translate([0, -100, 0]){
  difference() {
    translate([-7, 0, 0]){
      rotate([0, 0, 180]){
        {
          $fn=3;    //set sides to 3
          cylinder(r1=14.5, r2=14.5, h=10, center=false);
        }
      }
    }

    translate([-7, -14.5, 0]){
      cube([29, 29, 20], center=true);
    }
  }
}
// Pincho derecho
translate([0, 100, 0]){
  difference() {
    translate([-7, 0, 0]){
      rotate([0, 0, 180]){
        {
          $fn=3;    //set sides to 3
          cylinder(r1=14.5, r2=14.5, h=10, center=false);
        }
      }
    }

    translate([-7, 14.5, 0]){
      cube([29, 29, 20], center=true);
    }
  }
}
difference() {
  // base
  translate([0, -100, 0]){
    cube([45, 200, 10], center=false);
  }

  // Lata 1
  translate([0, 50, 0]){
    cylinder(r1=37.5, r2=37.5, h=10, center=false);
  }
  // Lata 2
  translate([0, -50, 0]){
    cylinder(r1=37.5, r2=37.5, h=10, center=false);
  }
  // Tornillo 1
  translate([30, 50, 5]){
    rotate([0, 90, 0]){
      cylinder(r1=1.7, r2=1.7, h=20, center=false);
    }
  }
  // Tornillo 2
  translate([30, -50, 5]){
    rotate([0, 90, 0]){
      cylinder(r1=1.7, r2=1.7, h=20, center=false);
    }
  }
  // Hueco cabeza tornillo 1
  translate([36, -50, 5]){
    rotate([0, 90, 0]){
      cylinder(r1=3, r2=3, h=4, center=false);
    }
  }
  // Hueco cabeza tornillo 2
  translate([36, 50, 5]){
    rotate([0, 90, 0]){
      cylinder(r1=3, r2=3, h=4, center=false);
    }
  }
  scale([2, 1.5, 1]){
    // Hueco derecha
    translate([10, 0, 0]){
      rotate([0, 0, 180]){
        {
          $fn=3;    //set sides to 3
          cylinder(r1=14.5, r2=14.5, h=10, center=false);
        }
      }
    }
  }
  scale([2, 1.5, 1]){
    // Hueco central
    translate([10, 70, 0]){
      rotate([0, 0, 180]){
        {
          $fn=3;    //set sides to 3
          cylinder(r1=14.5, r2=14.5, h=10, center=false);
        }
      }
    }
  }
  scale([2, 1.5, 1]){
    // Hueco izquierda
    translate([10, -70, 0]){
      rotate([0, 0, 180]){
        {
          $fn=3;    //set sides to 3
          cylinder(r1=14.5, r2=14.5, h=10, center=false);
        }
      }
    }
  }
}