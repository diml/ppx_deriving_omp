type t = A [@@deriving show]

let () = print_endline ([%show: t] A)
