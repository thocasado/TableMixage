function sortie = fct_fadingIn(signal,duree,fe)
sortie=signal;
Nech=floor(duree*fe);
%Construction d'un vecteur intensite en croissance linéaire
vectIntensite=zeros(Nech,1);
for k=1:length(vectIntensite)
    vectIntensite(k)=(k/length(vectIntensite));
end

for i=1:Nech
    sortie(i)=sortie(i)*vectIntensite(i);
end 

end