(TeX-add-style-hook
 "paper"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
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
    "sec:org6bef35b"
    "img:stock"
    "sec:orge506344"
    "sec:orgf50cfb5"
    "sec:org07957d7"
    "sec:buyhold"
    "img:buyhold-strategy"
    "img:buyhold-performance"
    "tab:buyhold-trading-statistics"
    "img:buyhold-portfolio-summary"
    "sec:org8e06cca"
    "sec:donchian"
    "sec:org21012d2"
    "sec:org2c8f388"
    "sec:orgf5ae420"
    "sec:orgd7a75cd"
    "sec:org1a7cefa"
    "img:donchian-strategy"
    "img:donchian-performance"
    "sec:orgcf04c1b"
    "img:donchian-vs-buyhold"
    "img:relative-performance"
    "sec:org2bdee34"
    "tab:ff-regression"
    "tab:both_statistics"
    "img:strategy_summary"
    "sec:org0793dfa"))
 :latex)

