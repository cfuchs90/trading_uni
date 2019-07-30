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
    "sec:org19f9781"
    "sec:intro"
    "sec:org589bcf5"
    "img:stock"
    "sec:org7e2a92e"
    "sec:methodology"
    "sec:org299dc26"
    "sec:org72d7d2e"
    "sec:buyhold"
    "sec:org359ff01"
    "sec:donchian"
    "eq:donchian-channel"
    "sec:org88eaf3f"
    "sec:org865994c"
    "sec:calmar"
    "eq:calmar-ratio"
    "sec:org49f4b3d"
    "sec:orga50dea3"
    "sec:org27c5ce0"
    "sec:bah-results"
    "img:buyhold-strategy"
    "img:buyhold-performance"
    "tab:bah-stats"
    "sec:org0d7ad69"
    "sec:dcs-results"
    "img:donchian-strategy"
    "img:donchian-performance"
    "tab:strategy-stats"
    "sec:orga7b6fdb"
    "sec:comparison"
    "sec:org266b70a"
    "img:donchian-vs-buyhold"
    "sec:org8a29f01"
    "img:relative-performance"
    "sec:org3543beb"
    "tab:both-tradestats"
    "sec:org46c2071"
    "tab:regression"
    "sec:orgf4012a4"
    "sec:org062404d"
    "sec:orgf5fae56"
    "sec:opt"
    "sec:orga01fefb"
    "sec:trading")
   (LaTeX-add-bibliographies
    "references")
   (LaTeX-add-counters
    "savepage"))
 :latex)

