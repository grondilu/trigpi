unit module TrigPi;

proto sinpi(Real $ --> Real)    is export {*}
proto cospi(Real $ --> Real)    is export {*}
sub cispi(Real $x --> Complex)  is export { cospi($x) + i*sinpi($x) }

multi sinpi($x where -Inf ..^ 0  ) { -sinpi(-$x) }
multi sinpi($x where 0    ..^ 1/4) {  sin(pi*$x) }
multi sinpi($x where 1/4  ..  1/2) {  cos(pi*(1/2 - $x)) }
multi sinpi($x where 1/2 ^..^ 1  ) {  sinpi(1 - $x) }
multi sinpi($x where 1    ..^ 2  ) { -sinpi($x - 1) }
multi sinpi($x where 2    ..  Inf) {  sinpi($x % 2) }

multi cospi($x where -Inf ..^ 0  ) {  cospi(-$x) }
multi cospi($x where 0    ..^ 1/4) {  cos(pi*$x) }
multi cospi($x where 1/4  ..  1/2) {  sin(pi*(1/2 - $x)) }
multi cospi($x where 1/2 ^..^ 1  ) { -cospi(1 - $x) }
multi cospi($x where 1    ..^ 2  ) { -cospi($x - 1) }
multi cospi($x where 2    ..  Inf) {  cospi($x % 2) }
