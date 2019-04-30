//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {10, 0, 0, 1.0};
//+
Point(3) = {0, 2, 0, 1.0};
//+
Point(4) = {10, 2, 0, 1.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 4};
//+
Line(3) = {4, 3};
//+
Line(4) = {3, 1};
//+
Line Loop(1) = {3, 4, 1, 2};
//+
Plane Surface(1) = {1};
//+
Transfinite Line {4, 2} = 20 Using Progression 1;
//+
Transfinite Line {3, 1} = 100 Using Progression 1;
//+
Transfinite Surface {1};
//+
Recombine Surface {1};
//+
Extrude {0, 0, 1} {
  Surface{1}; Layers{1}; Recombine;
}
//+
Physical Surface("left") = {17};
//+
Physical Surface("right") = {25};
//+
Physical Surface("top") = {13};
//+
Physical Surface("bottom") = {21};
//+
Physical Volume("body") = {1};
