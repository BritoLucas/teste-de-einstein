% Cor
cor(ingles,vermelho).
cor(X,Y):-(X\=ingles),(Y\=vermelho).

cor(X,verde):-bebida(X,cafe).
cor(X,amarela):-fuma(X,dunhill).
cor(X,Y):-not(bebida(X,cafe);fuma(X,dunhill);cor(X,vermelho)),
          ((cor(X,branco),Y is branco);(cor(X,azul),Y is azul)).
% nacionalidade
nacionalidade(vermelho,ingles).
nacionalidade(cachorro,sueco).
nacionalidade(cha,dirnamarques).
nacionalidade(X,Y):-((cor(X,C),C\=vermelho),Y\=ingles);
                    ((animal(X,A),A\=cachorro),Z\=sueco);
                    ((bebida(X,B),B\=cha),Y\=dirnamarques).



nacionalidade(X,noruegues):-(((X-1)>0),(X+1)<6)),
(((X1 is X-1),cor(X1,azul));
((X2 is X+1),cor(X2,azul)))
% bebida
bebida(dirnamarques,cha).
bebida(X,Y):-(X\=dirnamarques),(Y\=cha).

% cigarro
fuma(X,pall_mall):-animal(X,passaros).
fuma(X,blue_master):-bebida(X,cerveja).
fuma(X,prince):-nacionalidade(X,alemao).

% animal
animal(sueco,cachorro).
animal(X,Y):-((X\=sueco),(Y\=cachorro)).
%animal(X,cachorro):-X=sueco.

%animal(X,cavalos):-(((X-1)>0),(X+1)<6)),
%               (((X1 is X-1),cigarro(X1,dunhill));
%                ((X2 is X+1),cigarro(X2,dunhill))).
%cigarro(X,blends):-(((X-1)>0),(X+1)<6)),
%               (((X1 is X-1),bebida(X1,agua));
%                ((X2 is X+1),animal(X2,agua)))




%cor(F,N):-((F == casa2),(N = azul)).

%cor(X,Y):-(X\=ingles),(Y\=vermelho).
%cor(X,verde):-bebida(X,cafe).
%cor(X,amarela):-cigarro(X,dunhill).
% nacionalidade
%nacionalidade(vermelho,ingles).
%nacionalidade(cachorro,sueco).
%nacionalidade(cha,dirnamarques).
% bebida
%bebida(X,Y):-(X\=dirnamarques),(Y\=cha).
% cigarro
%cigarro(X,pall_mall):-animal(X,passaros).
%cigarro(X,blue_master):-bebida(X,cerveja).
%cigarro(X,prince):-nacionalidade(X,alemao).
% animal
%animal(sueco,cachorro).
%animal(X,cachorro):-X=sueco.

%casa1(R):-
%        nacionalidade(casa1,N),
%        R = [N].

%casa2(R):-
%        cor(casa2,N),
%        R = [N].

%casa3(R):-
%        bebida(casa3,N),
%        R = [N].
