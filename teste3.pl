% Cor
nacionalidade(1,noruegues).

cor(2,azul).
cor(X,vermelha):-(X=\=2),nacionalidade(X,ingles),
      not(cigarro(X,dunhill);bebida(X,cafe);animal(X,cachorros);
      ((X1 is X+1),cor(X1,branca))).
cor(X,azul):-X1 is (X-1),nacionalidade(X1,noruegues).
cor(X,amarela):-(X=\=2),cigarro(X,dunhill),
      not(animal(X,passaros);nacionalidade(X,ingles);
      bebida(X,cafe);bebida(X,cafe);nacionalidade(X,alemao);
      animal(X,cavalos)).
cor(X,verde):-((X>3),(X<5)),((X1 is X+1),cor(X1,branca)),bebida(X,cafe),
      not(nacionalidade(X,ingles);nacionalidade(X,alemao);
      cigarro(X,dunhill);fuma(X,blue_master)).
cor(X,branca):-not(cor(X,azul);cor(X,amarela);
          cor(X,vermelha);cor(X,verde)).

nacionalidade(X,alemao):-(X=\=1),(X=\=4),cigarro(X,prince),not(
          bebida(X,cha);bebida(X,cerveja);animal(X,passaros);
          animal(X,cachorros);cor(X,vermelha);
          cor(X,amarela);
          nacionalidade(X,sueco);nacionalidade(X,dirnamarques);
          nacionalidade(X,ingles);nacionalidade(X,noruegues)).
nacionalidade(X,dirnamarques):-((X=\=1),(X=\=3)),bebida(X,cha),
          not(cigarro(X,blue_master);cigarro(X,prince);
          animal(X,cachorros);cor(X,vermelha);
          cor(X,verde);
          nacionalidade(X,alemao);nacionalidade(X,sueco);
          nacionalidade(X,ingles);nacionalidade(X,noruegues)).
nacionalidade(X,ingles):-(X=\=1),cor(X,vermelha),
          not(bebida(X,cha);animal(X,cachorros);
          cigarro(X,dunhill);cigarro(X,prince);
          (X1 is (X-1),nacionalidade(X1,noruegues);
          nacionalidade(X,alemao);nacionalidade(X,dirnamarques);
          nacionalidade(X,sueco);nacionalidade(X,noruegues))).
nacionalidade(X,noruegues):-(X=:=1),
          not(bebida(X,cha);bebida(X,cafe);bebida(X,leite);
          cigarro(X,prince);animal(X,cachorros);cor(X,vermelha);
          cor(X,verde);cor(X,azul);
          nacionalidade(X,alemao);nacionalidade(X,dirnamarques);
          nacionalidade(X,ingles);nacionalidade(X,sueco)).
nacionalidade(X,sueco):-(X=\=1),
          not(bebida(X,cha);cigarro(X,prince);
          cigarro(X,pall_mall);cor(X,vermelha);
          nacionalidade(X,alemao);nacionalidade(X,dirnamarques);
          nacionalidade(X,ingles);nacionalidade(X,noruegues)).

bebida(X,leite):-X=:=3,not(nacionalidade(X,dirnamarques);cor(X,verde);
          cigarro(X,blue_master)).
bebida(X,agua):-(X=\=3),not(nacionalidade(X,dirnamarques);cor(X,verde);
          cigarro(X,blue_master)).
bebida(X,cafe):-(X=\=3),cor(X,verde),not(nacionalidade(X,dirnamarques);
          nacionalidade(X,ingles);
          cigarro(X,blue_master);cigarro(X,dunhill)).
bebida(X,cerveja):-(X=\=3),cigarro(X,blue_master),
          not(nacionalidade(X,dirnamarques);
          cor(X,verde);cor(X,amarela);animal(X,passaros);
          cigarro(X,prince);cigarro(X,dunhill)).
bebida(X,cha):-(X=\=3),nacionalidade(X,dirnamarques),
          not(nacionalidade(X,noruegues);cor(X,verde);cor(X,vermelha);
          animal(X,cachorros);cigarro(X,blue_master);).

animal(X,cachorros):-(X=\=1),nacionalidade(X,sueco),
          not(cor(X,vermelha);bebida(X,cha);cigarro(X,pall_mall)
          ;cigarro(X,prince);).
animal(X,cavalos):-(X=\=1),
          not(cor(X,amarela);nacionalidade(X,sueco);
          cigarro(X,dunhill)).
animal(X,gatos):-(X=\=1),
          not(cigarro(X,blends);nacionalidade(X,sueco);
          cigarro(X,pall_mall)).
animal(X,passaros):-cigarro(X,pall_mall),
          not(cor(X,vermelha);nacionalidade(X,ingles);
          nacionalidade(X,sueco);nacionalidade(X,alemao);
          cor(X,amarela);bebida(X,cerveja);).
animal(X,peixes):-not(nacionalidade(X,sueco);cigarro(X,pall_mall);
          bebida(X,cha);cigarro(X,pall_mall)).


cigarro(X,blends):-(((X-1)>0),(X+1)<6)),
          (((X1 is X-1),animal(X1,gatos));
          ((X2 is X+1),animal(X2,gatos))),
          not(cor(amarela);animal(X,passaros);
          bebida(X,cerveja);
          nacionalidade(X,alemao)).
cigarro(X,blue_master):-(X=\=3),bebida(X,,cerveja),
          not(cor(amarela);animal(X,passaros);
          nacionalidade(X,dirnamarques);
          nacionalidade(X,alemao);
          cor(X,verde))
cigarro(X,pall_mall):-animal(X,passaros),
          not(cor(amarela);nacionalidade(sueco);nacionalidade(alemao)).
cigarro(X,dunhill):-(X=\=2),
          not(bebida(X,cafe);nacionalidade(X,ingles);
          animal(X,cavalos)).
cigarro(X,prince):-(X=\=1),nacionalidade(X,prince),
          not(cor(X,vermelha);animal(X,cachorros)).

casa(X1,X2,X3,X4,X5):-
          ((cor(1,C1),nacionalidade(1,N1),bebida(1,B1),cigarro(1,Ci1),
            animal(1,A1)),
            X1=[C1,N1,B1,Ci1,A1]),
          ((cor(2,C),nacionalidade(2,N2),bebida(2,B2),cigarro(2,Ci2),
            animal(2,A2)),
            X2=[C2,N2,B2,Ci2,A2]),
          ((cor(3,C3),nacionalidade(3,N3),bebida(3,B3),cigarro(3,Ci3),
            animal(3,A3)),
            X3=[C3,N3,B3,Ci3,A3]),
          ((cor(4,C4),nacionalidade(4,N4),bebida(4,B4),cigarro(4,Ci4),
            animal(4,A4)),
            X4=[C4,N4,B4,Ci4,A4]),
          ((cor(5,C5),nacionalidade(5,N5),bebida(5,B5),cigarro(5,Ci5),
            animal(5,A5)),
            X4=[C5,N5,B5,Ci5,A5]).
