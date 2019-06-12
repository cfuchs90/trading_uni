(TeX-add-style-hook
 "paper"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "lat_pre"
    "article"
    "art11"
    "inputenc"
    "fontenc"
    "graphicx"
    "grffile"
    "longtable"
    "wrapfig"
    "rotating"
    "ulem"
    "amsmath"
    "textcomp"
    "amssymb"
    "capt-of"
    "hyperref")
   (LaTeX-add-labels
    "sec:orgeda4966"
    "sec:org29878ee"
    "img:stock"
    "sec:org19ccdca"
    "sec:org0d2efc3"
    "sec:buyhold"
    "sec:org9574b4f"
    "sec:donchian"
    "sec:org487c59a"
    "sec:orge711e8a"
    "sec:org5e127bd"
    "sec:org6cfb2b4"
    "img:buyhold-strategy"
    "img:buyhold-performance"
    "tab:buyhold-trading-statistics"
    "img:buyhold-portfolio-summary"
    "sec:org820330a"
    "img:donchian-strategy"
    "img:donchian-performance"
    "sec:org9db585b"
    "img:donchian-vs-buyhold"
    "img:relative-performance"
    "sec:org7f674bb"
    "tab:ff-regression"
    "tab:both_statistics"
    "img:strategy_summary"
    "sec:org8af3c9f"
    "sec:org2de181c"
    "sec:org373f55e"
    "sec:orgc45141f"))
 :latex)

