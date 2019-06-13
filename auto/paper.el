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
    "sec:orgd7ad9fe"
    "sec:intro"
    "sec:org351d9ea"
    "img:stock"
    "eq:calmar-ratio"
    "sec:org94b1789"
    "sec:org80a51a2"
    "sec:buyhold"
    "sec:org297c05b"
    "sec:donchian"
    "sec:org2ff1ff4"
    "sec:org426c9f0"
    "sec:org8758bf5"
    "sec:orgdb6f93c"
    "img:buyhold-strategy"
    "img:buyhold-performance"
    "tab:buyhold-trading-statistics"
    "img:buyhold-portfolio-summary"
    "sec:org23dd689"
    "sec:strategy"
    "img:donchian-strategy"
    "img:donchian-performance"
    "tab:strategy-statistics"
    "sec:org0ed6584"
    "sec:comparison"
    "img:relative-performance"
    "img:donchian-vs-buyhold"
    "tab:both-statistics"
    "sec:org67bb956"
    "tab:ff-regression"
    "img:strategy_summary"
    "sec:org3a25766"
    "sec:org61575aa"
    "sec:org3583e97"
    "sec:orgaede4f1"))
 :latex)

