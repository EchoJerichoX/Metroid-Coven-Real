// 1 = Circle.
// 2 = Large circle.
// 3 = Horizontal figure-8.
// 4 = Vertical figure-8.
// Circles have top-side origins.
// Figure-8s have central origins.

switch (argument0)
{
   case 1: path = pthPlazmiteCircle;
   case 2: path = pthPlazmiteCircleLarge;
   case 3: path = pthPlazmiteFig8LR;
   case 4: path = pthPlazmiteFig8UD;
}

path_start(path,2,1,false);
