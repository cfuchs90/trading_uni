(TeX-add-style-hook
 "paper"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
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
    "sec:org16684f7"
    "sec:org734b149"
    "img:stock"
    "sec:org0f41256"
    "sec:org6baac27"
    "sec:buyhold"
    "sec:org60f1c0b"
    "sec:donchian"
    "sec:org6a358f8"
    "sec:org55324e5"
    "sec:orgf7b5ff3"
    "sec:org03b88e4"
    "img:buyhold-strategy"
    "img:buyhold-performance"
    "tab:buyhold-trading-statistics"
    "img:buyhold-portfolio-summary"
    "sec:orgfd1b440"
    "sec:strategy"
    "img:donchian-strategy"
    "img:donchian-performance"
    "tab:strategy-statistics"
    "sec:orgf08d0a1"
    "img:donchian-vs-buyhold"
    "img:relative-performance"
    "tab:both-statistics"
    "sec:orgd188526"
    "tab:ff-regression"
    "img:strategy_summary"
    "sec:org31745ba"
    "sec:org5c4a746"
    "sec:org69d46f6"
    "sec:org010f203"))
 :latex)

