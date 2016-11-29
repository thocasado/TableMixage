clear all
close all

%% Question 1 
N=11025;
f0=880;
fe=44100;
Nrep=1000;
Nfft=2*1024;
vectN=0:N-1;
x=sin(2*pi*f0*vectN/fe);

x=maFct(x,fe,N,f0,Nrep,Nfft);

%soundsc(x,fe); %permet d'écouter le signal 


nbh=5;
note=noteFct(N,f0,fe,nbh);
note=maFct(note,fe,N,f0,100,Nfft);


