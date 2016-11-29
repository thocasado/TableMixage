function[note]=noteFct(N,f0,fe,nbh)
vectN=0:N-1;
note=sin(2*pi*f0/fe*vectN);

amp_h=[1,0.7,0.95,0.75,0.6,0.65,0.5,0.6,0.5,0.45,0.5,0.6,0.5,0.25,0.5,0.3,...
    0.25,0.3,0.4,0.4,0.3,0.25,0.2,0.15];

for i=1:nbh
    note=note+amp_h(i)*sin(2*pi*(i+1)*f0/fe*vectN);
end

