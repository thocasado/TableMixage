function sortie = fct_bruit(signal,type,fe, RSBdb)
%RSBdb correspond aux valeurs de Db données dans le sujet donc on le
%connait.

TrSignal=signal';
Ps=TrSignal*signal; %CALCUL la somme des échantillons au carré (technique du prof)

if type == 'BruitTonal'
    %ajouter bruit tonal
    % créer une sinusoïde
     vectN=1:length(signal);
     f0=98;%On met la fréquence que l'on veut tant qu'elle est inférieure à fe/2.
     bruit=sin(2*pi*f0*vectN/fe);
    
    
elseif type == 'BruitBlanc'
    bruit=randn(1,length(signal));%On définit bruitBase
    
    
else
    bruit=0;
    %retourner erreur
end
Pb=bruit*bruit';%On calcule la somme des échantillons du bruit au carré
a=sqrt((Ps/Pb)*10^(-RSBdb/10));%on calcule le coefficient a  


sortie=TrSignal+a*bruit;
        
end