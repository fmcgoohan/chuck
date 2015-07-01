Mix2 p => dac;
SinOsc s1 => p.left;
SinOsc s2 => p.right;

30::second => dur duration;
1000 => int steps;

1000 => s1.freq;
1010 => s2.freq;

for (0 => int i; i < steps; i++)
{
    (2.0 / steps * i) - 1.0 => p.pan;
    duration / steps => now;
}
