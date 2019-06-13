(TeX-add-style-hook
 "paper"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem")))
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
    "hyperref")
   (LaTeX-add-labels
    "sec:orgc4df026"
    "sec:intro"
    "sec:orgc34b368"
    "img:stock"
    "eq:calmar-ratio"
    "sec:orgc9adb43"
    "sec:org5ef3d9b"
    "sec:buyhold"
    "sec:orgf92c0d7"
    "sec:donchian"
    "sec:org7049e49"
    "sec:orgef5c593"
    "sec:org13a3e5a"
    "sec:org714d108"
    "img:buyhold-strategy"
    "img:buyhold-performance"
    "tab:buyhold-trading-statistics"
    "img:buyhold-portfolio-summary"
    "sec:orgb42c6a1"
    "sec:strategy"
    "img:donchian-strategy"
    "img:donchian-performance"
    "tab:strategy-statistics"
    "sec:orgf37ae40"
    "sec:comparison"
    "sec:orge5d6521"
    "img:relative-performance"
    "sec:orgd95a586"
    "img:donchian-vs-buyhold"
    "sec:orgd44c526"
    "tab:both-statistics"
    "sec:orgab6ff7f"
    "tab:ff-regression"
    "img:strategy_summary"
    "sec:org7e98451"
    "sec:org57d6c79"
    "sec:orga1ec7ec"
    "sec:orga592f0d"))
 :latex)

