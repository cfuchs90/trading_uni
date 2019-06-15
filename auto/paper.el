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
    "sec:orgaf047d4"
    "sec:intro"
    "sec:orge6f4a7d"
    "sec:org3d45c52"
    "sec:org59152ce"
    "img:stock"
    "sec:orgc969218"
    "eq:calmar-ratio"
    "sec:org69e929e"
    "sec:org1d3df5f"
    "sec:buyhold"
    "sec:org23e7d82"
    "sec:donchian"
    "sec:org61f2d0f"
    "sec:org2e88f69"
    "sec:orgf0c4c0d"
    "sec:org301f77a"
    "img:buyhold-strategy"
    "img:buyhold-performance"
    "tab:buyhold-trading-statistics"
    "img:buyhold-portfolio-summary"
    "sec:orgce2d6f3"
    "sec:strategy"
    "img:donchian-strategy"
    "img:donchian-performance"
    "tab:strategy-statistics"
    "sec:org53ea6b7"
    "sec:comparison"
    "sec:org1d71632"
    "img:relative-performance"
    "sec:orgb42c686"
    "img:donchian-vs-buyhold"
    "sec:org116486c"
    "tab:both-statistics"
    "sec:org899b76a"
    "tab:ff-regression"
    "img:strategy_summary"
    "sec:org761e06a"
    "sec:org1bd3fad"
    "sec:org799e337"
    "sec:org21cba66")
   (LaTeX-add-bibliographies
    "research-references"))
 :latex)

