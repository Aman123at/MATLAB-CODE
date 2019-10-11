%Experiment 20

%This experiment shows how Nyquist rate effects sampling

%Oversampling : fs>2fm

fm = 100;
fs = 600; t = 0:1/fs:((10/fm)-(1/fs)); %10 cycles 60 samples
x = sin(2*pi*fm*t); fx = fft(x,64); xr = ifft(fx,64); %inv fft generates 64 samples
f = (-31*fs/64):(fs/64):(32*fs/64);
fx = [fx(34:64) fx(1:33)];
subplot(231),stem(x),title('sampled signal, fm = 100 ,fs=600');
subplot(232),stem(f,abs(fx)), axis([-300 300 0 30]);
title('frequency spectrum ,fm=100,fs=600');
subplot(233),stem(xr),title('recoverd signal,fm =100,fs = 600');


%Undersampling : fs<2fm

fm = 400;
x = sin(2*pi*fm*t);
fx = fft(x,64); xr = ifft(fx,64);
fx = [fx(34:64) fx(1:33)];
subplot(234),stem(x),title('sampled signal, fm = 400 ,fs=600');
subplot(235),stem(f,abs(fx)), axis([-300 300 0 30]);
title('frequency spectrum ,fm=400,fs=600');
subplot(236),stem(xr),title('recoverd signal,fm =400,fs = 600');
