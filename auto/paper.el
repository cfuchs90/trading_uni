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
    "sec:org4cbfc83"
    "sec:intro"
    "sec:org3ceaa94"
    "img:stock"
    "eq:calmar-ratio"
    "sec:org09300e2"
    "sec:org0ba86de"
    "sec:buyhold"
    "sec:orgd5644d4"
    "sec:donchian"
    "sec:orgc2a7789"
    "sec:org120b4cb"
    "sec:org8be4efc"
    "sec:org9d2562b"
    "img:buyhold-strategy"
    "img:buyhold-performance"
    "tab:buyhold-trading-statistics"
    "img:buyhold-portfolio-summary"
    "sec:org01371ae"
    "sec:strategy"
    "img:donchian-strategy"
    "img:donchian-performance"
    "tab:strategy-statistics"
    "sec:org9c2b015"
    "sec:comparison"
    "sec:orgc8010b8"
    "img:relative-performance"
    "sec:org2f1d434"
    "img:donchian-vs-buyhold"
    "sec:org18995e9"
    "tab:both-statistics"
    "sec:org4316b45"
    "tab:ff-regression"
    "img:strategy_summary"
    "sec:org3536642"
    "sec:orgef36af9"
    "sec:orga63156e"
    "sec:org1d8649f"))
 :latex)

