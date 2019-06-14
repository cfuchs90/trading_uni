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
    "sec:org1e989de"
    "sec:intro"
    "sec:orgb15118d"
    "img:stock"
    "eq:calmar-ratio"
    "sec:org400d287"
    "sec:orgc8590b0"
    "sec:buyhold"
    "sec:org02f4a72"
    "sec:donchian"
    "sec:org9adf144"
    "sec:org4ab74e2"
    "sec:org51a985f"
    "sec:orgd53e226"
    "img:buyhold-strategy"
    "img:buyhold-performance"
    "tab:buyhold-trading-statistics"
    "img:buyhold-portfolio-summary"
    "sec:org2f65c39"
    "sec:strategy"
    "img:donchian-strategy"
    "img:donchian-performance"
    "tab:strategy-statistics"
    "sec:org76f2ad7"
    "sec:comparison"
    "sec:org40e98b6"
    "img:relative-performance"
    "sec:orgdeac58a"
    "img:donchian-vs-buyhold"
    "sec:org4cbbdbd"
    "tab:both-statistics"
    "sec:org682e73c"
    "tab:ff-regression"
    "img:strategy_summary"
    "sec:orgd7b71b1"
    "sec:orgf56cc2d"
    "sec:org3ed5110"
    "sec:org29410f0"))
 :latex)

