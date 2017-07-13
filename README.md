# tern
ml ternary pipe

````OCaml
let ( |?> ) x (p, f, g) = if (p x) then (f x) else (g x)

5 |?> ((fun x -> x > 3), (fun x -> x + 1), (fun _ -> 0)) = 6
3 |?> ((fun x -> x > 3), (fun x -> x + 1), (fun _ -> 0)) = 0

let print_truth_table expr =
  find_vars expr
  |> gen_ctxts
  |?> ( List.is_empty
      , (fun _ -> ["NO VARS " ^ (Bool.to_string (eval expr []))])
      , List.map ~f:(fun c -> (ctxt_to_string c) ^"=> "^  (Bool.to_string (eval expr c)))
      )
  |> List.iter ~f:print_endline
````
