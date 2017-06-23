# 1st Stuart Ruby Challenge

## Environment setup

To participate in the challenge you only need to have Ruby installed in your machine (2.2.0+), with Tk enabled (most of the installations already have this).

## 2d Roller Coaster

In this edition the challenge is to implement a simulator of a 2d roller coaster.

A roller coaster track is given as a series of points, whose coordinates are passed through standard input to the program, one per line:

```
153.167706326906 170.818594853651
152.705297542038 170.778692088403
152.230255082701 170.621111633323
```

All numbers are positive floats and represent coordinates in a 2d grid. The
limits of the coordinates in this system are (400, 600). You can find example
tracks provided in the `lib/data` folder. Use them to ensure your simulation
works well.

### Physics 😱

To help you with the Physics, which are not the focus of the problem, we're
going to provide some formulas and explanations.

If the car is at point `p0`, with velocity `v0` and height `h0`, and the next point is `p1` at height `h1`, the car velocity at `p1` is going to be

    v1 = sqrt(2*g*(h0 - h1) + v0**2)

where `g` is the gravitational acceleration (9.8 m/s²). The problem assumes
there is no friction.

The average velocity when going from `p0` to `p1` is calculated as `v = (v0 +
v1)/2`. Having that and computing the distance between the two points, you can
know the time it should take using the formula `time = space/velocity`.

You can assume that `2*g*(h0 - h1) + v0**2` is always positive, so the car always moves forward until the track ends, and the quotient above is always well-defined.

At the start of the track the car has some height, and has no initial velocity, it is left to the effect of gravity.

We are going to treat every 10 points as being equal to 1 meter. So remember
this when calculating distances.

## Graphical visualization

Using Tk, a solution should draw the track in a canvas as a series of segments joining the given points, and the car as a little circle. Then make the car follow the track according to the computations above until the end of the track is found.

Make the car jump from point to point with a `sleep` call for the computed
amount of time each segments take, no need to interpolate points or draw the actual continuous velocity variation.

You can use testing gems as you wish, but no other gems are allowed, only standard library.

## Demo

To see a demo of the visualization working, please visit http://perl.plover.com/qotw/misc/e026/loops.mov.

## Winning the challenge

After the challenge is started, whenever someone thinks he has finished the
problem he raises his hand.

Code quality is not evaluated, the only metric is getting the implementation right first.

If his code behaves correctly in the 3 tracks provided, he will be considered
the winner.
