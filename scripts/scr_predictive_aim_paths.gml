// Script returns the direction, in degrees, that the projectile needs to be fired to hit the target
// Takes two arguments, the projectile being fired, and the target.
// Returns noone (GML version of null) if the target can't be hit.

// Read in arguments
var projectile = argument0;
var target = argument1
var target_dir = argument2;
var target_speed = argument3;

var target_hspeed = lengthdir_x(target_speed, target_dir);
var target_vspeed = lengthdir_y(target_speed, target_dir);

// Find the delta x and delta y
var dx = target.x - projectile.x;
var dy = target.y - projectile.y;

// Calculate a, b, and c for the quadratic formula
var a = sqr(target_hspeed) + sqr(target_vspeed) - sqr(projectile.speed);
var b = 2 * (target_hspeed  * dx + target_vspeed * dy);
var c = sqr(dx) + sqr(dy);

// Get the determinant
var det = sqr(b) - 4 * a * c;

// If det < 0, the terget can not be hit so return noone
if(det < 0){
    return noone;
}

// Calculate the intercepts
var t0 = (-b + sqrt(det)) / (2 * a);
var t1 = (-b - sqrt(det)) / (2 * a);

// Get the non negative min og t0 and t1
if (t1 <=0 ) and (t0 > 0){
    var t = t0;
}else if (t0 <= 0) and (t1 > 0){
    var t = t1;
}else{
    var t = min( t0, t1 );
}

var interceptX = target.x + (t * target_hspeed);
var interceptY = target.y + (t * target_vspeed);

return point_direction(projectile.x, projectile.y, interceptX, interceptY);


