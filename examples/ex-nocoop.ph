
(* Exemple de coopération incomplète (exemple ex-max.ph sans la sorte coopérative) *)

process b 1
process c 1
process a 2

b 0 -> a 2 1
b 0 -> a 1 0
b 1 -> a 2 1

b 1 -> a 0 1
b 1 -> a 1 2

c 0 -> a 2 1
c 0 -> a 1 0
c 1 -> a 2 1
c 1 -> a 1 0

c 0 -> a 0 1
c 1 -> a 0 1
c 1 -> a 1 2

