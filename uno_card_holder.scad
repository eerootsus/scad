// This is to hold Uno cards in a stack. Deck measurments have a small tolerance, except for the thickness of the pack (for a snug fit)
// Designed for Uno Disney 100 card pack
uno_width = 56.4;
uno_height = 82.2;
uno_thickness = 31;
uno_corner_radius = 5;

relative_height = 3/4;
wall_thickness = 2;

rotate([90,0,0]){
    difference(){
        /*color("red", 0.1)
        // Reference rectangle for the holder
        square([uno_width+wall_thickness*2, uno_height+wall_thickness]);

        // Reference rectangle for the pack
        color("red", 0.1)
        translate([wall_thickness, wall_thickness,0])
        square([uno_width, uno_height]);*/

        // Holder
        color("orange",0.3)
        linear_extrude(uno_thickness+wall_thickness*2, center = true)
        hull(){
            translate([uno_corner_radius, uno_corner_radius, 0])
            circle(uno_corner_radius);

            translate([uno_corner_radius, (uno_height-uno_corner_radius+wall_thickness)*relative_height, 0])
            square(uno_corner_radius*2, center = true);

            translate([uno_width+wall_thickness*2-uno_corner_radius, uno_corner_radius, 0])
            circle(uno_corner_radius);

            translate([uno_width+wall_thickness*2-uno_corner_radius, (-uno_corner_radius+wall_thickness+uno_height)*relative_height, 0])
            square(uno_corner_radius*2, center = true);
        }
        
                // Card pack
        color("white",0.3)
        linear_extrude(uno_thickness, center = true)
        hull(){
            translate([uno_corner_radius+wall_thickness, uno_corner_radius+wall_thickness, 0])
            circle(uno_corner_radius);

            translate([uno_corner_radius+wall_thickness, -uno_corner_radius+wall_thickness+uno_height, 0])
            circle(uno_corner_radius);

            translate([uno_width-uno_corner_radius+wall_thickness, uno_corner_radius+wall_thickness, 0])
            circle(uno_corner_radius);

            translate([uno_width-uno_corner_radius+wall_thickness, -uno_corner_radius+wall_thickness+uno_height, 0])
            circle(uno_corner_radius);    
        }
    }
}
