linha_cor([C]):- C = [amarela,azul,branca,verde,vermelha].
linha_nac([N]):- N = [alemao,dinamarques,ingles,noruegues,sueco].
linha_beb([B]):- B = [agua,cafe,cerveja,cha,leite].
linha_cig([Ci]):- Ci = [blends,bluemaster,dunhill,pall_mall,prince].
linha_ani([A]):- A = [cachorros,cavalos,gatos,passaros,peixes].
% [1,2,3,4,5],

p_lin_cor([C|T],Atributos,Matriz);-
p_lin_cor([C|T],Atributos,Matriz):-Cont=1,((not(C\=[]),rec(Atributos,Cont,Atual)),
        not(member(Atual,T)),C=Atual),
        p_lin_cor(T,Atributos,Matriz,Cont),

preencher_mat(X,Atributos):-
        X=[[],[],[],[],[]].

reolver(X):-
        linha_cor(C),linha_nac(N),linha_beb(B),linha_cig(Ci),linha_ani(A),
        Atributos = [A,N,B,Ci,A],
        preencher_mat(X,Atributos).

% Retorna em S o valor na posição N
rec([H|T],0,S):-false.
rec([H|T],N,S):-  Cont=1,(Cont=:=N,S=H);
                  (N1 is (N - 1),
                  rec(T,N1,S1),
                  S=S1).
