
(* Hook ppx_deriving with ppx_derivers, so that when using ppx_type_conv as well things
   work smoothly *)
type Ppx_derivers.deriver += Blah
let () =
  let import d = Ppx_derivers.register d.Ppx_deriving.name Blah in
  Ppx_deriving.add_register_hook import;
  List.iter import (Ppx_deriving.derivers ())

let () =
  Migrate_parsetree.Driver.register ~name:"ppx_deriving"
    (module Migrate_parsetree.OCaml_current)
    (fun _ _ -> Ppx_deriving.mapper)
