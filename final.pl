% Cor
% Cores = [amarela,azul,branca,verde,vermelha],
% Nacs = [alemao,dinamarques,ingles,noruegues,sueco],
% Bebs = [agua,cafe,cerveja,cha,leite],
% Cigs = [blends,bluemaster,dunhill,pallmall,prince],
% Anis = [cachorro,cavalo,gato,passaro,peixe],
% S[_,_,_,_,_]  S[C1,C2,C3,C4,C5] Regras 15
% S[[_,noruegues,_,_,_],_,_,_,_],
% S[_,_,[_,_,leite,_,_],_,_]

regra_noruegues([[_,noruegues,_,_,_],_,_,_,_]).
regra_leite([_,_,[_,_,leite,_,_],_,_]).

verifica([B|[]],C):-member(B,C).
verifica([H|T],C):-member(H,C),verifica(T,C).
membro(R,[B|[]]):-verifica(R,B).
membro(R,[H|T]):-verifica(R,H),membro(R,T).

% nacionalidade([[_,noruegues,_,_,_],_,_,_,_]).
nacionalidade(4,alemao).
nacionalidade(3,ingles).
nacionalidade(2,dirnamarques).
nacionalidade(5,sueco).

cor(2,azul).
cor(3,vermelha).
cor(1,amarela).
cor(4,verde).
cor(5,branca).

bebida(1,agua).
bebida(4,cafe).
bebida(5,cerveja).
bebida(2,cha).
% bebida(S[_,_,[_,_,leite,_,_],_,_]).

cigarro(2,blends).
cigarro(5,blue_master).
cigarro(1,dunhill).
cigarro(3,pail_mail).
cigarro(4,prince).

animal(2,cavalos).
animal(1,gatos).
animal(3,passaros).
animal(5,cachorros).
animal(4,peixes).

casas(R):- R=[C1,C2,C3,C4,C5],regra_noruegues(R),regra_leite(R),
          ).
