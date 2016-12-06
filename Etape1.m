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

%soundsc(x,fe); %permet d'�couter le signal 

nbh=5;
note=noteFct(N,f0,fe,nbh);
note=maFct(note,fe,N,f0,100,Nfft);

%%Jouer un morceau

liste_note={'C4', 'C4', 'C4', 'D4','E4','D4','C4','E4','D4',...
    'D4','C4','D4' ,'D4','D4','D4','A3','B3','D4',...
    'C3', 'B3', 'A3', 'G3'};

[tab_note]=tab_noteFct();
morceau=[];
nbh=4;

for i=1:length(liste_note)
    morceau=[morceau,zeros(1,floor(N/2)),eval(['noteFct(floor(N/2),tab_note.' liste_note{i} ',fe,nbh)'])];
end


soundsc(morceau,fe);




%% Etude du son Mozart
clear all 
close all
clc
%Chargement morceau : 

load('mozart.mat');
load('Instru1.mat');
load('Instru2.mat');
load('Instru3.mat');
load('Instru4.mat');
load('Instru5.mat');
load('Instru6.mat');

%Etude du son 

%soundsc(mozart,fe);
Nfen=256;
Nfft=2^(nextpow2(Nfen));

X=fft(mozart,Nfft);
subplot 311
plot(0:Nfft-1,abs(X));
title('en fonction du numero d echantillon');

axe_f=-fe/2:fe/Nfft:fe/2-fe/Nfft;
subplot 312
plot(axe_f,fftshift(abs(X)));
title('en fonction de la frequence');
xlim([-fe/2 fe/2]);

subplot 313
spectrogram(mozart, rectwin(Nfen), Nfen/2, Nfft, fe, 'yaxis');

A=fct_superposition(mozart,Instru1,0,fe); % On supper
B=fct_superposition(A,Instru2,2,fe);
C=fct_superposition(B,Instru3,3,fe);
D=fct_superposition(C,Instru4,4,fe);
E=fct_superposition(D,Instru5,5,fe);
F=fct_superposition(E,Instru6,6,fe);
%soundsc(F,fe);

%% Etape 2 :Fadind In et Fading Out
clear all;
close all; 
clc;

load('mozart.mat');
fe=44100;

%%Fading (Lin�aire)

soundsc(fct_fadingIn(mozart,10,fe),fe);
%soundsc(fct_fadingOut(mozart,10,fe),fe);

% Un fading (in/out) correspond � une augmentatio ou baisse de l'intensit�
% sonore du signal, on a donc moduler le signal selon un vecteur lin�aire
% dans notre cas


%% Etape 3 
clear all;
close all; 
clc;

fe=44100;
load('mozart.mat');

%explication de la fonction randn...
% RSB = Puissance signal/ puissance bruit = somme(�chantillons^2)/somme(echantillons^2)
% echantillon bruit = sin(quelquechose) ou randn()


