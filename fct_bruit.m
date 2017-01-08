function sortie = fct_bruit(signal,type,fe, RSBdb)
%RSBdb correspond aux valeurs de Db donn�es dans le sujet donc on le
%connait.

TrSignal=signal';
Ps=TrSignal*signal; %CALCUL la somme des �chantillons au carr� (technique du prof)

if type == 'BruitTonal'
    %ajouter bruit tonal
    % cr�er une sinuso�de
     vectN=1:length(signal);
     f0=98;%On met la fr�quence que l'on veut tant qu'elle est inf�rieure � fe/2.
     bruit=sin(2*pi*f0*vectN/fe);
    
    
elseif type == 'BruitBlanc'
    bruit=randn(1,length(signal));%On d�finit bruitBase
    
    
else
    bruit=0;
    %retourner erreur
end
Pb=bruit*bruit';%On calcule la somme des �chantillons du bruit au carr�
a=sqrt((Ps/Pb)*10^(-RSBdb/10));%on calcule le coefficient a  


sortie=TrSignal+a*bruit;
        
end