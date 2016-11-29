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

%% Chargement morceau : 

load('mozart.mat');
load('Instru1.mat');
load('Instru2.mat');
load('Instru3.mat');
load('Instru4.mat');
load('Instru5.mat');
load('Instru6.mat');

