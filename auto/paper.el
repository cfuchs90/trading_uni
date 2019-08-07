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
    "sec:org359e75d"
    "sec:intro"
    "img:stock"
    "img:sma_example"
    "sec:orgb589490"
    "sec:methodology"
    "sec:orgbb96148"
    "sec:org8e1e25b"
    "sec:buyhold"
    "sec:org37c92fb"
    "sec:donchian"
    "eq:donchian-channel"
    "sec:org2b8794c"
    "sec:org36536b2"
    "sec:calmar"
    "eq:calmar-ratio"
    "sec:org117fe30"
    "sec:ff-intro"
    "sec:org10ddd60"
    "sec:org57bb44a"
    "sec:bah-results"
    "img:buyhold-strategy"
    "img:buyhold-performance"
    "tab:bah-stats"
    "sec:org1e9598b"
    "sec:dcs-results"
    "img:donchian-strategy"
    "img:donchian-performance"
    "tab:strategy-stats"
    "sec:org7f47afb"
    "sec:comparison"
    "img:donchian-vs-buyhold"
    "img:relative-performance"
    "tab:both-tradestats"
    "tab:regression"
    "sec:orga093c65"
    "sec:org9374e88"
    "sec:orgb28ed50"
    "sec:opt"
    "sec:org5354bcd"
    "sec:trading")
   (LaTeX-add-bibliographies
    "references")
   (LaTeX-add-counters
    "savepage"))
 :latex)

