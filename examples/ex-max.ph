
(* Exemple cohérent inspiré d'un vrai modèle de Thomas *)
(* Modèle de Thomas :
Graphe des Interactions :
    a -(+,1)-> d
    b -(+,1)-> d
Paramétrisation :
      w   | K_{d,w}
        0 | 0
      {b} | 0
      {a} | 1
    {a,b} | 2
*)

process a 1
process b 1

process d 2

COOPERATIVITY([a;b] -> d 1 0, [[0;0];[0;1]])
COOPERATIVITY([a;b] -> d 2 1, [[0;0];[0;1];[1;0]])

COOPERATIVITY([a;b] -> d 0 1, [[1;0];[1;1]])
COOPERATIVITY([a;b] -> d 1 2, [[1;1]])

