
(* Petit exemple pour tester la différenciation des frappes depuis le régulateur sélectionné *)

process a 1
process b 1
process c 1

b 0 -> a 1 0
b 1 -> a 0 1

c 0 -> a 1 0
c 1 -> a 0 1

