function sortie = fct_fadingOut(signal,duree,fe)

sortie=signal;
Nech=floor(duree*fe);
%Construction d'un vecteur intensite en croissance linéaire
vectIntensite=zeros(Nech,1);
for k=1:length(vectIntensite)
    vectIntensite(k)=(k/length(vectIntensite));
end

for i=1:Nech
    sortie(length(signal)-i)=sortie(length(signal)-i)*vectIntensite(i);
end 

end