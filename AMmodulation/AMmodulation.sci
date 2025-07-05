
// AM Modulation in Scilab
clc; clear; close;

fs = 10000; // Sampling Frequency
t = 0:1/fs:0.1; // Time vector
fc = 200; // Carrier Frequency
fm = 10;  // Message Frequency

mt = cos(2*%pi*fm*t); // Message Signal
ct = cos(2*%pi*fc*t); // Carrier Signal
ka = 1; // Modulation Index

st = (1 + ka * mt) .* ct; // AM Modulated Signal

subplot(3,1,1);
plot(t, mt), title("Message Signal"), xlabel("Time"), ylabel("Amplitude");

subplot(3,1,2);
plot(t, ct), title("Carrier Signal"), xlabel("Time"), ylabel("Amplitude");

subplot(3,1,3);

plot(t, st), title("AM Modulated Signal"), xlabel("Time"), ylabel("Amplitude");
ka = ifelse(max(abs(mt)) > 0.5, 1, 2); // Increase ka if message amplitude is weak
st_adaptive = (1 + ka * mt) .* ct;

subplot(3,1,3);
plot(t, st_adaptive), title("Adaptive AM Modulated Signal"), xlabel("Time"), ylabel("Amplitude");
specgram(st, 256, fs);
title("Spectrogram of AM Signal");
