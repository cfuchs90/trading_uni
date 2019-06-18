(TeX-add-style-hook
 "paper"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem") ("natbib" "square")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
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
    "hyperref"
    "natbib")
   (LaTeX-add-labels
    "sec:org40833aa"
    "sec:intro"
    "sec:org99831ed"
    "sec:org574088e"
    "eq:calmar-ratio"
    "sec:org0733d0b"
    "sec:orged4a8b8"
    "sec:orgfb15a02"
    "img:stock"
    "sec:orgcef382a"
    "sec:org0b1322e"
    "sec:buyhold"
    "sec:orgb739884"
    "sec:donchian"
    "sec:org6be0dc5"
    "sec:org757efde"
    "sec:orge1dbab4"
    "sec:orgdbfbc1c"
    "img:buyhold-strategy"
    "img:buyhold-performance"
    "tab:buyhold-trading-statistics"
    "img:buyhold-portfolio-summary"
    "sec:org7b4ca42"
    "sec:strategy"
    "img:donchian-strategy"
    "img:donchian-performance"
    "tab:strategy-statistics"
    "sec:org989261f"
    "sec:comparison"
    "sec:orgb6829b3"
    "img:relative-performance"
    "sec:orgf5d568a"
    "img:donchian-vs-buyhold"
    "sec:org26c356f"
    "tab:statistics-both"
    "sec:orga94d986"
    "tab:ff-regression"
    "img:strategy_summary"
    "sec:org9e528d7"
    "sec:org30b9058"
    "sec:org0a197a6"
    "sec:orgab0726b")
   (LaTeX-add-bibliographies
    "references")
   (LaTeX-add-counters
    "savepage"))
 :latex)

