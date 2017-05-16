Ppx_deriving_omp
----------------

This is a temporary project allowing one to use [ppx_deriving][pd] 4.X
with [ocaml-migrate-parsetree driver][omp] and in particular
[jbuilder][jb]. The next major version of ppx_deriving will work with
jbuilder out of the box.

To use simply add `ppx_deriving_omp` to the list of preprocessors in
your jbuild file:

```scheme
(library
 ((name blah)
  ...
  (preprocess (pps (ppx_deriving_omp ppx_deriving_blah ...)))))
```

In order for this to work, the `.cma` and `.cmxa` for the various
ppx_deriving plugins you are using must be linked with `-linkall`.

[pd]:  https://github.com/whitequark/ppx_deriving
[omp]: https://github.com/let-def/ocaml-migrate-parsetree
[jb]:  https://github.com/janestreet/jbuilder
