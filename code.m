clear all;close all;clc;
t=0:0.01*pi:4*pi;
x=cos(4*pi*t)+cos(8*pi*t)+cos(12*pi*t);
fx=fft(x,512);
w=1/(0.01*pi*2)*linspace(0,1,256);
subplot 421 
plot(t,x)
xlabel('time')
ylabel('amplitude')
subplot 422
plot(w,abs(fx(1:256)))
xlabel('frequency HZ')
ylabel('amplitude') 
axis([0 20 0 200])
filter=ones(1,256);
filter(1,90:256)=0;
subplot 423
plot(w,filter)
xlabel('frequency HZ')
ylabel('amplitude')
axis([0 20 0 2]) 
subplot 424
result=abs(fx(1:256)).*filter;
plot(w,result)
xlabel('frequency HZ')
ylabel('amplitude') 
axis([0 20 0 200])
subplot 413 plot(w,result) 
xlabel('frequency') 
ylabel('amplitude')
axis([0 16 0 200])
iresult=ifft((fx),length(t));
subplot 414
plot(t,iresult)
xlabel('time')
ylabel('amplitude') 
axis([0 14 -2 2]
plot(t,iresult) xlabel('time') ylabel('amplitude') axis([0 14 -2 2])