(TeX-add-style-hook
 "paper"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem") ("natbib" "square")))
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
    "hyperref"
    "natbib")
   (LaTeX-add-labels
    "sec:org684ff44"
    "sec:intro"
    "sec:org8c44a08"
    "sec:orgae0423e"
    "sec:org3c47e25"
    "img:stock"
    "sec:orgdf98ed4"
    "eq:calmar-ratio"
    "sec:orgd61f5af"
    "sec:org8ecaabe"
    "sec:buyhold"
    "sec:orgc7bb2af"
    "sec:donchian"
    "sec:org21e882a"
    "sec:orgabe893e"
    "sec:org4c2fca3"
    "sec:orgb31c85b"
    "img:buyhold-strategy"
    "img:buyhold-performance"
    "tab:buyhold-trading-statistics"
    "img:buyhold-portfolio-summary"
    "sec:org50db269"
    "sec:strategy"
    "img:donchian-strategy"
    "img:donchian-performance"
    "tab:strategy-statistics"
    "sec:orgd8a806e"
    "sec:comparison"
    "sec:org6c8a6d4"
    "img:relative-performance"
    "sec:org2a4e455"
    "img:donchian-vs-buyhold"
    "sec:orgc046233"
    "tab:statistics-both"
    "sec:orgcaf95f3"
    "img:strategy_summary"
    "sec:org86b86ef"
    "sec:org5eafca3"
    "sec:org9231d52"
    "sec:org692e144")
   (LaTeX-add-bibliographies
    "research-references")
   (LaTeX-add-counters
    "savepage"))
 :latex)

