open Ast_helper

let () =
  Ppx_deriving.register
    (Ppx_deriving.create "foo" ()
       ~core_type:(fun ctyp ->
         Exp.constant ~loc:ctyp.ptyp_loc
           (Const.string "Hello, world!")))
