unit module TrigPi;

proto sinPi(Real $ --> Real)    is export {*}
proto cosPi(Real $ --> Real)    is export {*}
sub cisPi(Real $x --> Complex)  is export { cosPi($x) + i*sinPi($x) }

multi sinPi($x where -Inf ..^ 0  ) { -sinPi(-$x) }
multi sinPi($x where 0    ..^ 1/4) {  sin(pi*$x) }
multi sinPi($x where 1/4  ..  1/2) {  cos(pi*(1/2 - $x)) }
multi sinPi($x where 1/2 ^..^ 1  ) {  sinPi(1 - $x) }
multi sinPi($x where 1    ..^ 2  ) { -sinPi($x - 1) }
multi sinPi($x where 2    ..  Inf) {  sinPi($x % 2) }

multi cosPi($x where -Inf ..^ 0  ) {  cosPi(-$x) }
multi cosPi($x where 0    ..^ 1/4) {  cos(pi*$x) }
multi cosPi($x where 1/4  ..  1/2) {  sin(pi*(1/2 - $x)) }
multi cosPi($x where 1/2 ^..^ 1  ) { -cosPi(1 - $x) }
multi cosPi($x where 1    ..^ 2  ) { -cosPi($x - 1) }
multi cosPi($x where 2    ..  Inf) {  cosPi($x % 2) }
