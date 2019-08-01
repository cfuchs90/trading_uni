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
    "sec:org13c3c60"
    "sec:intro"
    "sec:orgd33b3f3"
    "sec:org43967fd"
    "sec:orgd8407e2"
    "img:stock"
    "sec:orgb25d99f"
    "sec:methodology"
    "sec:org866a844"
    "sec:org2c18b09"
    "sec:buyhold"
    "sec:org7547627"
    "sec:donchian"
    "eq:donchian-channel"
    "sec:orgd0e4cb8"
    "sec:orga1641c7"
    "sec:calmar"
    "eq:calmar-ratio"
    "sec:org779c338"
    "sec:ff-intro"
    "sec:orgd0e0e37"
    "sec:org0d43999"
    "sec:bah-results"
    "img:buyhold-strategy"
    "img:buyhold-performance"
    "tab:bah-stats"
    "sec:orgc8d4d9a"
    "sec:dcs-results"
    "img:donchian-strategy"
    "img:donchian-performance"
    "tab:strategy-stats"
    "sec:orgb47dfc6"
    "sec:comparison"
    "sec:orge5e78f9"
    "img:donchian-vs-buyhold"
    "sec:org4922368"
    "img:relative-performance"
    "sec:org3c8d93f"
    "tab:both-tradestats"
    "sec:org697eec0"
    "tab:regression"
    "sec:org021b8fe"
    "sec:orgd6d31c6"
    "sec:orgfe311bd"
    "sec:opt"
    "sec:orgc6cd2f1"
    "sec:trading")
   (LaTeX-add-bibliographies
    "references")
   (LaTeX-add-counters
    "savepage"))
 :latex)

