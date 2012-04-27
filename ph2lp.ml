(*** Traduction d'un fichier .ph vers un fichier .lp ***)

open Ph_types ;;
open Ph_util ;;



(* Entrée : fichier .ph
   Sortie : fichier .lp (création/remplacement) *)
let fichier_entree =
  if Array.length Sys.argv > 1
    then Array.get Sys.argv 1
    else ""
;;
let fichier_sortie =
  if Array.length Sys.argv > 2
    then Array.get Sys.argv 2
    else ""
;;

let entree =
  if String.length fichier_entree != 0
    then open_in fichier_entree
    else stdin
;;
let sortie =
  if String.length fichier_sortie != 0
    then open_out fichier_sortie
    else stdout
;;



(*** Lecture du fichier .ph d'entrée ***)
let ph, _ = Ph_util.parse entree ;;
close_in entree ;;



(*** Écriture dans le fichier de sortie ***)
output_string sortie ("% Translation of the Process Hitting to ASP\n") ;;

(* Sortes *)
output_string sortie "\n% Sorts\n" ;;
List.iter (fun sort -> output_string sortie ("sort(\"" ^ (fst sort) ^ "\"," ^ (string_of_int (snd sort)) ^ ").\n")) (fst ph) ;;

(* Frappes du PH *)
output_string sortie "\n% Actions\n" ;;
Hashtbl.iter (fun target value -> let ((hit, _), bounce) = value in
  output_string sortie ("action(\"" ^ (fst hit) ^ "\"," ^ (string_of_int (snd hit)) ^ "," ^
  "\"" ^ (fst target) ^ "\"," ^ (string_of_int (snd target)) ^ "," ^ (string_of_int bounce) ^ ").\n")) (snd ph) ;;

flush sortie ;;
close_out sortie ;;

