h=0.1;
Point(1) = {2.0000000000000001e-01,0.0000000000000000e+00,0.0000000000000000e+00,h};
Point(2) = {0.0000000000000000e+00,0.0000000000000000e+00,0.0000000000000000e+00,h};
Point(3) = {-2.0000000000000001e-01,0.0000000000000000e+00,0.0000000000000000e+00,h};
Point(4) = {-1.0000000000000000e+00,-1.0000000000000000e+00,0.0000000000000000e+00,h};
Point(5) = {1.0000000000000000e+00,-1.0000000000000000e+00,0.0000000000000000e+00,h};
Point(6) = {1.0000000000000000e+00,1.0000000000000000e+00,0.0000000000000000e+00,h};
Point(7) = {-1.0000000000000000e+00,1.0000000000000000e+00,0.0000000000000000e+00,h};
Point(8) = {1.4,1.,0.0000000000000000e+00,h};
Point(9) = {1.4,-1.,0.0000000000000000e+00,h};

Circle(1) = { 1,2,3};
Circle(2) = { 3,2,1};
Line(3) = { 4,5};
Line(4) = { 5,6};
Line(5) = { 6,7};
Line(6) = { 7,4};
Line Loop(1) = {1,2};
Line Loop(2) = {3,4,5,6};
Plane Surface(3) = {2,1};

Line(7) = {6, 8};
Line(8) = {8, 9};
Line(9) = {9, 5};
Line Loop(10) = {7, 8, 9, 4};
Plane Surface(11) = {10};


Physical Line("MarkerDirichlet") = {6};
Physical Line("MarkerNeumann_1") = {3,5};
Physical Line("MarkerNeumann_2") = {7,9};
Physical Line("MarkerRobin") = {8};
Physical Line("wall") = {1,2};
Physical Line("Interface_1_2") = {4};
Physical Surface("Omega1") = {3};
Physical Surface("Omega2") = {11};

