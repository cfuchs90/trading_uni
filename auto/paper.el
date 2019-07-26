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
    "sec:org338c61b"
    "sec:intro"
    "sec:org46e7a59"
    "img:stock"
    "sec:org5400fda"
    "sec:strategy"
    "sec:org91e7add"
    "sec:buyhold"
    "sec:org13ab624"
    "sec:donchian"
    "sec:org46e9968"
    "sec:org5626a2d"
    "sec:org8ba0f1a"
    "sec:calmar"
    "eq:calmar-ratio"
    "sec:org1203aa1"
    "sec:org7ee0b34"
    "sec:bah-results"
    "img:buyhold-strategy"
    "img:buyhold-performance"
    "tab:bah-stats"
    "sec:orgb78bd48"
    "img:donchian-strategy"
    "img:donchian-performance"
    "tab:strategy-stats"
    "sec:orgea6536f"
    "sec:comparison"
    "sec:org9fb5189"
    "img:relative-performance"
    "sec:org0ce5e41"
    "img:donchian-vs-buyhold"
    "sec:org65aed82"
    "tab:both-tradestats"
    "sec:org54a62d9"
    "tab:regression"
    "sec:org2932ad2"
    "sec:org1409692"
    "sec:org18b8d8a"
    "sec:org058a34a")
   (LaTeX-add-bibliographies
    "references")
   (LaTeX-add-counters
    "savepage"))
 :latex)

