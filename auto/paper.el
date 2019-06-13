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
    "sec:org336e436"
    "sec:intro"
    "sec:org7753a37"
    "img:stock"
    "eq:calmar-ratio"
    "sec:orgec1d611"
    "sec:orgd827827"
    "sec:buyhold"
    "sec:orgd691935"
    "sec:donchian"
    "sec:org242a83a"
    "sec:orgc1968f8"
    "sec:org4003803"
    "sec:org47afab4"
    "img:buyhold-strategy"
    "img:buyhold-performance"
    "tab:buyhold-trading-statistics"
    "img:buyhold-portfolio-summary"
    "sec:orgf405a86"
    "sec:strategy"
    "img:donchian-strategy"
    "img:donchian-performance"
    "tab:strategy-statistics"
    "sec:org47a71d6"
    "sec:comparison"
    "sec:org1a7b06a"
    "img:relative-performance"
    "sec:org26241bd"
    "img:donchian-vs-buyhold"
    "sec:org2303aae"
    "tab:both-statistics"
    "sec:org7aea2f9"
    "tab:ff-regression"
    "img:strategy_summary"
    "sec:org63826fb"
    "sec:org01f3ff5"
    "sec:org1ac6b90"
    "sec:orgdfef31a"))
 :latex)

