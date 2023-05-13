use Test;
use lib <lib>;
use TrigPi;

plan 2+4;

ok cisPi(1/2).reals[0] == 0;
ok cisPi(-1/2).reals[0] == 0;

for <0 1/2 1 2> {
  subtest ~(+$_), {
    plan 3;
    is-approx cisPi($_), cis(pi*$_);
    is-approx cosPi($_), cos(pi*$_);
    is-approx sinPi($_), sin(pi*$_);
  }
}


