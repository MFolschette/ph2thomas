
(* Exemple actuel du papier *)
(* Modèle de Thomas :
Graphe des Interactions :
    b -(+,1)-> a
    c -(+,1)-> a
Paramétrisation :
      w   | K_{a,w}
        0 | 0
      {b} | 1
      {c} | 1
    {b,c} | 2
*)

process b 1
process c 1

process a 2

COOPERATIVITY([b;c] -> a 1 0, [[0;0]])
COOPERATIVITY([b;c] -> a 2 1, [[0;0];[0;1];[1;0]])

COOPERATIVITY([b;c] -> a 0 1, [[0;1];[1;0];[1;1]])
COOPERATIVITY([b;c] -> a 1 2, [[1;1]])

a 2 -> b 1 0

