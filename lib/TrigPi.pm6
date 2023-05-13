unit module TrigPi;

sub sinPi(Real $x --> Real) is export {
    $x < 0  ?? -sinPi(-$x) !!
    $x < ½  ??  sin(pi*$x) !!
    $x == ½ ??  1 !!
    $x < 1  ??  sinPi(1 - $x) !!
    $x < 2  ?? -sinPi($x - 1) !!
    sinPi($x % 2)
}

sub cosPi(Real $x --> Real) is export {
    $x < 0   ??  cosPi(-$x) !!
    $x < ½   ??  cos(pi*$x) !!
    $x == ½  ?? 0 !!
    $x < 1   ?? -cosPi(1 - $x) !!
    $x < 2   ?? -cosPi($x - 1) !!
    cosPi($x % 2)
}

sub cisPi(Real $x --> Complex) is export {
   Complex.new: cosPi($x), sinPi($x);
}

