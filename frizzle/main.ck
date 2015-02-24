// Written by Joseph Post | Nov 11 2014 | jcpst.com
// Pretty skronky so far! Needs refactoring.

SinOsc sin => Gain g => dac;
TriOsc tri => Gain g2 => dac;

fun void sinGen(int a, int b, float duration)
{
    .8 => g.gain;
    Std.mtof( Math.random2(a, b) ) => sin.freq;
    duration::second => now;
    .0 => g.gain;
    50::ms => now;
}

// Figure out how to pass UGen object as param
// and remove this duplicate function.
fun void triGen(int a, int b, float duration)
{
    .8 => g2.gain;
    Std.mtof( Math.random2(a, b) ) => tri.freq;
    duration::second => now;
    .0 => g2.gain;
    50::ms => now;
}

while (true) 
{
    sinGen(60, 63, 1);
    sinGen(61, 64, .75);
}

