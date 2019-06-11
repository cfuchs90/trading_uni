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
    "sec:org2433d8e"
    "sec:org9a7981f"
    "sec:orgf01b85c"
    "img:buyhold-strategy"
    "img:buyhold-performance"
    "sec:org5cbc694"
    "sec:orgf3dbac6"
    "sec:orgf15d47f"
    "sec:org3e1a58d"
    "sec:org2e2d1eb"
    "sec:org26be0ac"
    "sec:orge2d50f6"
    "tab:strategy_statistics"
    "img:donchian-strategy"
    "img:donchian-performance"
    "img:donchian-vs-buyhold"
    "img:relative-performance"
    "img:strategy_summary"))
 :latex)

