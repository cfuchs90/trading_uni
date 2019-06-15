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
    "sec:orgb7db3ec"
    "sec:intro"
    "sec:org37c0e5c"
    "sec:org09b3cb5"
    "sec:orgebc3f55"
    "img:stock"
    "sec:orgd61b983"
    "eq:calmar-ratio"
    "sec:org73a91d9"
    "sec:org214b508"
    "sec:buyhold"
    "sec:orgf4f2607"
    "sec:donchian"
    "sec:orgb288e0b"
    "sec:orgc065006"
    "sec:orgbd5afc2"
    "sec:org38529e6"
    "img:buyhold-strategy"
    "img:buyhold-performance"
    "tab:buyhold-trading-statistics"
    "img:buyhold-portfolio-summary"
    "sec:org6363b44"
    "sec:strategy"
    "img:donchian-strategy"
    "img:donchian-performance"
    "tab:strategy-statistics"
    "sec:org554784f"
    "sec:comparison"
    "sec:orga33b7f4"
    "img:relative-performance"
    "sec:org7d42ccc"
    "img:donchian-vs-buyhold"
    "sec:org8bdedd8"
    "tab:both-statistics"
    "sec:org944f85e"
    "tab:ff-regression"
    "img:strategy_summary"
    "sec:org8899c83"
    "sec:org61252e9"
    "sec:org1c2e00b"
    "sec:org481ee6d")
   (LaTeX-add-bibliographies
    "research-references"))
 :latex)

