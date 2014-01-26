(add-to-list 'load-path "~/.emacs.d/custom/emacs-w3m")
(require 'w3m)

(setq browse-url-browser-function 'w3m-browse-url)
 (autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
 ;; optional keyboard short-cut
 (global-set-key (kbd "C-c u") 'browse-url-at-point)

(setq w3m-use-cookies t)

;; display images inline
(setq w3m-display-inline-images t)
