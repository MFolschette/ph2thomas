
(* Exemple simple pour tester l'inférence du BRN dans un cas d'auto-influence *)

process a 1
process b 1

a 1 -> a 1 0
b 1 -> a 0 1

