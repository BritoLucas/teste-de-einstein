% Cor
Cores = [amarela,azul,branca,verde,vermelha],
Nacs = [alemao,dinamarques,ingles,noruegues,sueco],
Bebs = [agua,cafe,cerveja,cha,leite],
Cigs = [blends,bluemaster,dunhill,pallmall,prince],
Anis = [cachorro,cavalo,gato,passaro,peixe],

nacionalidade(1,noruegues).
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
bebida(3,leite).

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

casa(X1,X2,X3,X4,X5):-
          ((cor(1,C1),nacionalidade(1,N1),bebida(1,B1),cigarro(1,Ci1),
            animal(1,A1)),
            X1=[C1,N1,B1,Ci1,A1]),
          ((cor(2,C2),nacionalidade(2,N2),bebida(2,B2),cigarro(2,Ci2),
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
            X5=[C5,N5,B5,Ci5,A5]).
