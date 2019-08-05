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
    "sec:org15bf747"
    "sec:intro"
    "img:stock"
    "sec:org78cf90f"
    "sec:org8333c97"
    "sec:org24cf444"
    "img:sma_example"
    "sec:org48519fd"
    "sec:org6aa75c3"
    "sec:org3a4a925"
    "sec:orgbf7d542"
    "sec:methodology"
    "sec:org590caff"
    "sec:orga7a7b75"
    "sec:buyhold"
    "sec:org115965d"
    "sec:donchian"
    "eq:donchian-channel"
    "sec:org08918f7"
    "sec:org7927fcd"
    "sec:calmar"
    "eq:calmar-ratio"
    "sec:org221ba14"
    "sec:ff-intro"
    "sec:orgeeca5f9"
    "sec:org042aad0"
    "sec:bah-results"
    "img:buyhold-strategy"
    "img:buyhold-performance"
    "tab:bah-stats"
    "sec:orgcc76214"
    "sec:dcs-results"
    "img:donchian-strategy"
    "img:donchian-performance"
    "tab:strategy-stats"
    "sec:orgcfb2001"
    "sec:comparison"
    "sec:org796bace"
    "img:donchian-vs-buyhold"
    "sec:orgf371500"
    "img:relative-performance"
    "sec:org62ad07f"
    "tab:both-tradestats"
    "sec:orge5f2eb2"
    "tab:regression"
    "sec:org50ddaf5"
    "sec:org396f12b"
    "sec:org8c03a3f"
    "sec:opt"
    "sec:orga39ea24"
    "sec:trading")
   (LaTeX-add-bibliographies
    "references")
   (LaTeX-add-counters
    "savepage"))
 :latex)

