% Cor
%     ['Amarela','Azul','Branco','Verde','Vermelho']
% Nacionalidade
%     ['Alemão','Dirnamarquês','Inglês','Norueguês','Sueco']
% Bebida
%     ['Água','Café','Cerveja','Chá','Leite']
% Cigarro
%     ['Blendes','BlueMaster','Dunhill','Pail Mall','Prince']
% Animal
%     ['Cachorros','Cavalos','Gatos','Passaros','Peixes']

% 1 Há 5 casas de diferentes cores;
% 2 Em cada casa mora uma pessoa de uma diferente
%   nacionalidade;
% 3 Esses 5 proprietários bebem diferentes bebidas,
%   fumam diferentes tipos de cigarros e têm um
%   certo animal de estimação;
% 4 Nenhum deles têm o mesmo animal, fumam o mesmo
%   cigarro ou bebem a mesma bebida.
% casa=[1,2,3,4,5].

%   fatos
casa(noruegues,casa1).
nacionalidade(casa1,noruegues).

cor(ingles,vermelho).
nacionalidade(vermelho,ingles).

animal(sueco,cachorro).
nacionalidade(cachorro,sueco).

bebida(dirnamarques,cha).
nacionalidade(cha,dirnamarques).

% A casa Verde fica do lado esquerdo da casa Branca

cor(X,verde):-bebida(X,cafe).
%bebida(X,cafe):-cor(X,verde).

fuma(X,pall_mall):-animal(X,passaros).
%animal(X,passaros):-fuma(X,pall_mall).

cor(X,amarela):-fuma(X,dunhill).
%fuma(X,dunhill):-cor(X,amarela).

casa(X,casa3):-bebida(X,leite).
%bebida(X,leite):-casa(X,casa3).

% O homem que fuma Blends vive ao lado do que tem Gatos.

% O homem que cria Cavalos vive ao lado do que fuma Dunhill.

fuma(X,blue_master):-bebida(X,cerveja).
%bebida(X,cerveja):-fuma(X,blue_master).

fuma(X,prince):-nacionalidade(X,alemao).
%nacionalidade(X,alemao):-fuma(X,prince).


fun([]):-[
  [casa1,cor(),nacionalidade(casa1,noruegues),_,_,_],
  [casa2,_,nacionalidade(casa1,noruegues),_,_,_],
  [casa3,_,nacionalidade(casa1,noruegues),_,_,_],
  [casa4,_,nacionalidade(casa1,noruegues),_,_,_],
  [casa5,_,nacionalidade(casa1,noruegues),_,_,_],]
%fun(X,[]):=[cor(X,C),nacionalidade(X,N),bebida(X,B),
%            cigarro(X,I),animal(X,L)].
