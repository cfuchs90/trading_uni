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
    "sec:org8a309af"
    "sec:intro"
    "sec:org1a8c59e"
    "sec:orgdb9ef1e"
    "sec:org7bd243e"
    "sec:orge267ce3"
    "sec:org44238d2"
    "eq:calmar-ratio"
    "sec:org62d22db"
    "sec:org50a7f86"
    "img:stock"
    "sec:org4a8acbd"
    "sec:org32338aa"
    "sec:buyhold"
    "sec:org447e1e1"
    "sec:donchian"
    "sec:org6d4c13b"
    "sec:org3fdec63"
    "sec:org845245a"
    "sec:org567094e"
    "img:buyhold-strategy"
    "img:buyhold-performance"
    "tab:buyhold-trading-statistics"
    "sec:org2dc581c"
    "sec:strategy"
    "img:donchian-strategy"
    "img:donchian-performance"
    "tab:strategy-statistics"
    "sec:org247e52d"
    "sec:comparison"
    "sec:org94d7121"
    "img:relative-performance"
    "sec:orge9e2373"
    "img:donchian-vs-buyhold"
    "sec:orgb116054"
    "tab:statistics-both"
    "sec:org01e8da4"
    "tab:ff-regression"
    "sec:org55db94a"
    "sec:orgf07b360"
    "sec:orge0c55fd"
    "sec:org351259b")
   (LaTeX-add-bibliographies
    "references")
   (LaTeX-add-counters
    "savepage"))
 :latex)

