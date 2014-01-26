(setq scheme-program-name 
      "/opt/boxen/homebrew/bin/mit-scheme")

;; MIT Scheme has an extended interface for interacting with the REPL called
;; “xscheme”, which includes things like M-o for evaluating an entire buffer.
;; to run scheme just type: M-x run-scheme.
(defun load-xscheme () (require 'xscheme))
(add-hook 'scheme-mode-hook 'load-xscheme)
