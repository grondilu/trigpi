use Test;
use TrigPi;

plan 3*4;

for <0 1/2 1 2> {
  is-approx cisPi($_), cis(pi*$_);
  is-approx cosPi($_), cos(pi*$_);
  is-approx sinPi($_), sin(pi*$_);
}

