% Cor
nacionalidade(1,noruegues).

cor(2,azul).
cor(CASA,vermelha):-nacionalidade(CASA,ingles).
cor(CASA,azul):-CASA1 is (CASA-1),nacionalidade(CASA1,noruegues).
cor(CASA,amarela):-cigarro(CASA,dunhill).
cor(CASA,verde):-((CASA1 is CASA+1),cor(CASA1,branca)).
cor(CASA,branca):-not(cor(CASA,azul);cor(CASA,amarela);
          cor(CASA,vermelha);cor(CASA,verde)).

nacionalidade(CASA,alemao):-(CASA=\=1),cigarro(CASA,prince),not(
          bebida(CASA,cha);bebida(CASA,cerveja);animal(CASA,passaros);
          animal(CASA,cachorros);cor(CASA,vermelha);
          cor(CASA,amarela)).
nacionalidade(CASA,dinamarques):-((CASA=\=1),(CASA=\=3)),bebida(CASA,cha),
          not(cigarro(CASA,blue_master);cigarro(CASA,prince);
          animal(CASA,cachorros);cor(CASA,vermelha);
          cor(CASA,verde)).
nacionalidade(CASA,ingles):-(CASA=\=1),cor(CASA,vermelha),
          not(bebida(CASA,cha);animal(CASA,cachorros);
          cigarro(CASA,dunhill);cigarro(CASA,prince);
          (CASA1 is (CASA-1),nacionalidade(CASA1,noruegues))).
nacionalidade(CASA,noruegues):-(CASA=:=1),
          not(bebida(CASA,cha);bebida(CASA,cafe);bebida(CASA,leite);
          cigarro(CASA,prince);animal(CASA,cachorros);cor(CASA,vermelha);
          cor(CASA,verde);cor(CASA,azul)).
nacionalidade(CASA,sueco):-(CASA=\=1),animal(CASA,cachorros),
          not(bebida(CASA,cha);cigarro(CASA,prince);
          cigarro(CASA,pall_mall);cor(CASA,vermelha)).

bebida(CASA,leite):-CASA=:=3,not(nacionalidade(CASA,dinamarques);cor(CASA,verde);
          cigarro(CASA,blue_master)).
bebida(CASA,agua):-(CASA=\=3),not(nacionalidade(CASA,dinamarques);cor(CASA,verde);
          cigarro(CASA,blue_master)).
bebida(CASA,cafe):-(CASA=\=3),cor(CASA,verde),not(nacionalidade(CASA,dinamarques);
          nacionalidade(CASA,ingles);
          cigarro(CASA,blue_master);cigarro(CASA,dunhill)).
bebida(CASA,cerveja):-(CASA=\=3),cigarro(CASA,blue_master),
          not(nacionalidade(CASA,dinamarques);
          cor(CASA,verde);cor(CASA,amarela);animal(CASA,passaros);
          cigarro(CASA,prince);cigarro(CASA,dunhill)).
bebida(CASA,cha):-(CASA=\=3),nacionalidade(CASA,dinamarques),
          not(nacionalidade(CASA,noruegues);cor(CASA,verde);cor(CASA,vermelha);
          animal(CASA,cachorros);cigarro(CASA,blue_master)).

animal(CASA,cachorros):-(CASA=\=1),nacionalidade(CASA,sueco),
          not(cor(CASA,vermelha);bebida(CASA,cha);cigarro(CASA,pall_mall)).
animal(CASA,cavalos):-(CASA=\=1),
          not(cor(CASA,amarela);nacionalidade(CASA,sueco);
          cigarro(CASA,dunhill)).
animal(CASA,gatos):-(CASA=\=1),
          not(cigarro(CASA,blends);nacionalidade(CASA,sueco);
          cigarro(CASA,pall_mall)).
animal(CASA,passaros):-cigarro(CASA,pall_mall),
          not(cor(CASA,vermelha);nacionalidade(CASA,ingles);
          nacionalidade(CASA,sueco);nacionalidade(CASA,alemao);
          cor(CASA,amarela);bebida(CASA,cerveja);).
animal(CASA,peixes):-not(nacionalidade(CASA,sueco);cigarro(CASA,pall_mall);
          bebida(CASA,cha);cigarro(CASA,pall_mall)).


cigarro(CASA,blends):-(((CASA-1)>0),(CASA+1)<6)),
          (((CASA1 is CASA-1),animal(CASA1,gatos));
          ((CASA2 is CASA+1),animal(CASA2,gatos))),
          not(cor(CASA,amarela);animal(CASA,passaros);
          bebida(CASA,cerveja);
          nacionalidade(CASA,alemao)).
cigarro(CASA,blue_master):-(CASA=\=3),bebida(CASA,,cerveja),
          not(cor(CASA,amarela);animal(CASA,passaros);
          nacionalidade(CASA,dinamarques);
          nacionalidade(CASA,alemao);
          cor(CASA,verde))
cigarro(CASA,pall_mall):-animal(CASA,passaros),
          not(cor(CASA,amarela);nacionalidade(CASA,sueco);
          nacionalidade(CASA,alemao)).
cigarro(CASA,dunhill):-(CASA=\=2),
          not(bebida(CASA,cafe);nacionalidade(CASA,ingles);
          animal(CASA,cavalos)).
cigarro(CASA,prince):-(CASA=\=1),nacionalidade(CASA,prince),
          not(cor(CASA,vermelha);animal(CASA,cachorros)).

CASA(CASA1,CASA2,CASA3,CASA4,CASA5):-
          ((cor(1,C1),nacionalidade(1,N1),bebida(1,B1),cigarro(1,Ci1),
            animal(1,A1)),
            CASA1=[C1,N1,B1,Ci1,A1]),
          ((cor(2,C),nacionalidade(2,N2),bebida(2,B2),cigarro(2,Ci2),
            animal(2,A2)),
            CASA2=[C2,N2,B2,Ci2,A2]),
          ((cor(3,C3),nacionalidade(3,N3),bebida(3,B3),cigarro(3,Ci3),
            animal(3,A3)),
            CASA3=[C3,N3,B3,Ci3,A3]),
          ((cor(4,C4),nacionalidade(4,N4),bebida(4,B4),cigarro(4,Ci4),
            animal(4,A4)),
            CASA4=[C4,N4,B4,Ci4,A4]),
          ((cor(5,C5),nacionalidade(5,N5),bebida(5,B5),cigarro(5,Ci5),
            animal(5,A5)),
            CASA4=[C5,N5,B5,Ci5,A5]).
