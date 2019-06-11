(TeX-add-style-hook
 "paper"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
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
    "sec:orga6561c5"
    "img:stock"
    "sec:orgc15d173"
    "sec:orgcfbb1a7"
    "sec:org7ed0b38"
    "sec:buyhold"
    "img:buyhold-strategy"
    "img:buyhold-performance"
    "tab:buyhold-trading-statistics"
    "img:buyhold-portfolio-summary"
    "sec:org4b653cc"
    "sec:donchian"
    "sec:org8cac4ae"
    "sec:orgf8e7ba7"
    "sec:orgbc54851"
    "sec:org5b35a03"
    "sec:org51bd67b"
    "img:donchian-strategy"
    "img:donchian-performance"
    "sec:org6c9ecea"
    "img:donchian-vs-buyhold"
    "img:relative-performance"
    "sec:orgb9053f4"
    "tab:ff-regression"
    "tab:both_statistics"
    "img:strategy_summary"
    "sec:org6cb3586"))
 :latex)

