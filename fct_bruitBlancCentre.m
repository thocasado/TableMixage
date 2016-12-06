function sortie = fct_bruit(signal,type,varBruit,fe)
sortie=signal;

if type == 'BruitTonal'
    %ajouter bruit tonal
elseif type == 'BruitBlanc'
    %Ajouter bruit blanc 
    for i=1:length(signal)
        sortie(i)=sortie(i)+moyenne+varBruit*randn(1)
    end
else
    %retourner une erreur
end
        

end