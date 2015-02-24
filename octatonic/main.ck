SinOsc s => JCRev r => dac;
.500 => r.gain;
.075 => r.mix;
35.0 => float note;
1    => int i;
while (i < 60)
{
    Std.mtof(note) => s.freq;
    .5 - (note/256.0) => s.gain;
    
    if (i % 2) {
        <<<"half step">>>;
    	note + 1 => note;
        .095::second => now;
    } else {
        <<<"whole step">>>;
        note + 2 => note;
        .125::second => now;
    }
    i + 1 => i;
}

0 => s.gain;
2::second => now;

