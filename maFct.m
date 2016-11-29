function [x]=maFct(fSignal,fe,N,f0,Nrep,Nfft)

vectN=0:N-1;
x=fSignal;

figure, plot(vectN,x);
xlabel('numéro échantillon');
ylabel('s(t)');
xlim([0 Nrep-1]);

X=fft(x,Nfft);
figure, plot(0:Nfft-1,abs(X));
title('En fonction du numéro échantillon');

axe_f=-fe/2:fe/Nfft:fe/2-fe/Nfft; %fe/Nfft est le pas 
figure, plot(axe_f,fftshift(abs(X)));
title('f(Hz');

%fenetrage 
figure, subplot 211
plot(vectN,x);
xlabel('numéro échantillon');
ylabel('s(t)');
xlim([0 Nrep-1]);

subplot 212
axe_f=-fe/2:fe/Nfft:fe/2-fe/Nfft; %fe/Nfft est le pas 
plot(axe_f,fftshift(abs(X)));
title('f(Hz');
