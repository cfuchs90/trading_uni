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
    "sec:orgb41e153"
    "sec:intro"
    "img:stock"
    "img:sma_example"
    "sec:org7d86da2"
    "sec:methodology"
    "sec:org7773e40"
    "sec:org70108b7"
    "sec:buyhold"
    "sec:org59ee38a"
    "sec:donchian"
    "eq:donchian-channel"
    "sec:orgc895afe"
    "sec:org60aa6e3"
    "sec:calmar"
    "eq:calmar-ratio"
    "sec:org2c901ee"
    "sec:ff-intro"
    "sec:orge6aab68"
    "sec:org23ac146"
    "sec:bah-results"
    "img:buyhold-strategy"
    "img:buyhold-performance"
    "tab:bah-stats"
    "sec:org1c320da"
    "sec:dcs-results"
    "img:donchian-strategy"
    "img:donchian-performance"
    "tab:strategy-stats"
    "sec:org3031212"
    "sec:comparison"
    "img:donchian-vs-buyhold"
    "img:relative-performance"
    "tab:both-tradestats"
    "tab:regression"
    "sec:org2982616"
    "sec:org18440ac"
    "sec:org8f21edf"
    "sec:opt"
    "sec:orgf81b3e1"
    "sec:trading")
   (LaTeX-add-bibliographies
    "references")
   (LaTeX-add-counters
    "savepage"))
 :latex)

