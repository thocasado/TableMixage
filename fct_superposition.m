function sortie = fct_superposition(signalBase, nvxSignal, t,fe)
longueurNvxSignal=length(nvxSignal);
sortie=signalBase;
k=floor(t*fe);

for i=1:longueurNvxSignal
    if k==0
        sortie(i)=sortie(i)+nvxSignal(i);
    else
        sortie(i+k-1)=sortie(k)+nvxSignal(i); %on somme les deux signaux
    end   
end

end