
(* Exemple avec une coopération non compatible avec un BRN (cas où L est vide) *)

process b 1
process c 1
process d 1

COOPERATIVITY([b;c] -> d 0 1, [[0;0];[0;1];[1;0]])
COOPERATIVITY([b;c] -> d 1 0, [[1;1];[0;1];[1;0]])

