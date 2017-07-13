let ( |?> ) x (p, f, g) = if (p x) then (f x) else (g x)

5 |?> ((fun x -> x > 3), (fun x -> x + 1), (fun _ -> 0)) = 6
3 |?> ((fun x -> x > 3), (fun x -> x + 1), (fun _ -> 0)) = 0
