clear all;
close all;

fs = 8000;
Ts = 1/fs;
metronomo = 110;


minima = 2*60/metronomo;
seminima = 1*60/metronomo;
colcheia = 0.5*60/metronomo;
semicolcheia = 0.25*60/metronomo;
fusa = 0.125*60/metronomo;


fb4 = 261.62557;

do_4 = fb4;
doU_4 = fb4*2^(1/12);
re_4 = fb4*2^(2/12);
reU_4 = fb4*2^(3/12);
mi_4 = fb4*2^(4/12);
fa_4 = fb4*2^(5/12);
faU_4 = fb4*2^(6/12);
sol_4 = fb4*2^(7/12);
solU_4 = fb4*2^(8/12);
la_4 = fb4*2^(9/12);
laU_4 = fb4*2^(10/12);
si_4 = fb4*2^(11/12);
p = 0;

fb5 = 523.25113;

do_5 = fb5;
doU_5 = fb5*2^(1/12);
re_5 = fb5*2^(2/12);
reU_5 = fb5*2^(3/12);
mi_5 = fb5*2^(4/12);
fa_5 = fb5*2^(5/12);
faU_5 = fb5*2^(6/12);
sol_5 = fb5*2^(7/12);
solU_5 = fb5*2^(8/12);
la_5 = fb5*2^(9/12);
laU_5 = fb5*2^(10/12);
si_5 = fb5*2^(11/12);

do_6 = 1046.5023;

 A = [
 %Parte 1    
 mi_5 semicolcheia
    mi_5 colcheia
    mi_5 semicolcheia
    p semicolcheia
    do_4 semicolcheia
    mi_5 colcheia
    sol_5 seminima
    sol_4 seminima
    do_5 colcheia
    p semicolcheia
    sol_4 semicolcheia
    p colcheia
    mi_4 colcheia
    p semicolcheia
    la_4 semicolcheia
    p semicolcheia
    si_4 semicolcheia
    p semicolcheia
    si_4 semicolcheia
    la_4 colcheia
    sol_4 semicolcheia
    mi_5 semicolcheia
    sol_5 semicolcheia
    la_5 colcheia
    fa_5 semicolcheia
    sol_5 colcheia
    p semicolcheia
    mi_5 semicolcheia
    p semicolcheia
    do_5 semicolcheia
    re_5 semicolcheia
    si_4 semicolcheia
    p colcheia
  %Parte 2   
    do_5 colcheia
     p semicolcheia
     sol_4 semicolcheia
     mi_4 colcheia
     p semicolcheia
     la_4 semicolcheia
     p semicolcheia
     si_4 semicolcheia
     p semicolcheia
     si_4 semicolcheia
     la_4 colcheia
     sol_4 semicolcheia
    mi_5 semicolcheia
    sol_5 semicolcheia
    la_5 colcheia
    fa_5 semicolcheia
    sol_5 colcheia
    p semicolcheia
    mi_5 semicolcheia
    p semicolcheia
    do_5 semicolcheia
    re_5 semicolcheia
    si_4 semicolcheia
    p colcheia
    p colcheia 
    sol_5 semicolcheia
    sol_5 semicolcheia
    fa_5 semicolcheia
    reU_5 colcheia
    mi_5 semicolcheia
    p semicolcheia
    solU_4 semicolcheia
    la_4 semicolcheia
    re_5 semicolcheia
    p semicolcheia
    la_4 semicolcheia
    do_5 semicolcheia
    reU_5 semicolcheia
    %Parte 3
    p colcheia
    sol_5 semicolcheia
    sol_5 semicolcheia
    fa_5 semicolcheia
    reU_5 colcheia
    mi_5 semicolcheia
    p semicolcheia
    do_6 semicolcheia
    p semicolcheia
    do_6 semicolcheia
    do_6 seminima 
    p colcheia 
    sol_5 semicolcheia
    sol_5 semicolcheia
    fa_5 semicolcheia
    reU_5 colcheia
    mi_5 semicolcheia
    p semicolcheia
    solU_4 semicolcheia
    la_4 semicolcheia
    re_5 semicolcheia
    p semicolcheia
    la_4 semicolcheia
    do_5 semicolcheia
    reU_5 semicolcheia
    p colcheia
    mi_5 colcheia
    p semicolcheia
    re_5 semicolcheia
    p colcheia
    do_5 seminima
    p seminima
    %Parte 4
    p colcheia
    sol_5 semicolcheia
    sol_5 semicolcheia
    fa_5 semicolcheia
    reU_5 colcheia
    mi_5 semicolcheia
    p semicolcheia
    solU_4 semicolcheia
    la_4 semicolcheia
    do_5 semicolcheia
    p semicolcheia
    la_4 semicolcheia
    do_5 semicolcheia
    re_5 semicolcheia %
    p colcheia
    sol_5 semicolcheia
    sol_5 semicolcheia
    fa_5 semicolcheia
    reU_5 colcheia
    mi_5 semicolcheia
    p semicolcheia
    do_6 semicolcheia
    p semicolcheia
    do_6 semicolcheia
    do_6 seminima
    %Parte 5
    p colcheia 
    sol_5 semicolcheia
    sol_5 semicolcheia
    fa_5 semicolcheia
    reU_5 colcheia
    mi_5 semicolcheia
    p semicolcheia
    solU_4 semicolcheia
    la_4 semicolcheia
    re_5 semicolcheia
    p semicolcheia
    la_4 semicolcheia
    do_5 semicolcheia
    reU_5 semicolcheia
    p colcheia 
    mi_5 colcheia
    p semicolcheia
    re_5 semicolcheia
    p colcheia
    do_5 seminima
    p seminima
    do_5 semicolcheia
    do_5 colcheia
    do_5 semicolcheia
    p semicolcheia
    do_5 semicolcheia
    re_5 colcheia
    mi_5 semicolcheia
    do_5 colcheia
    la_4 semicolcheia
    sol_4 seminima
    %Parte6
    do_5 semicolcheia
    do_5 colcheia
    do_5 semicolcheia
    p semicolcheia
    do_5 semicolcheia
    re_5 semicolcheia
    mi_5 semicolcheia
    p minima
    do_5 semicolcheia
    do_5 colcheia
    do_5 semicolcheia
    p semicolcheia
    do_5 semicolcheia
    re_5 colcheia
    mi_5 semicolcheia
    do_5 colcheia
    la_4 semicolcheia
    sol_4 seminima
    mi_5 semicolcheia
    mi_5 colcheia
    mi_5 semicolcheia
    p semicolcheia
    do_5 semicolcheia
    mi_5 colcheia
    sol_5 seminima
    sol_4 seminima
    ]

som = [];
y = zeros(size(A));
tam = length(A(:,1));
for cont=1:1:tam
    t = (0:1/fs:A(cont,2));
    y = sin(2*pi*A(cont,1)*t);
    som = [som y];
end
sound(som);
