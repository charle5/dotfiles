;; /This/ file (~init.el~) that you are reading
;; should be in this folder
(add-to-list 'load-path "~/.emacs.d/custom")

;; Package Manager
;; See ~Cask~ file for its configuration
;; https://github.com/cask/cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; Keeps ~Cask~ file in sync with the packages
;; that you install/uninstall via ~M-x list-packages~
;; https://github.com/rdallasgray/pallet
(require 'pallet)

;; point goes to the last place where it was when you previously visited a file.
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file "~/.emacs.d/saved-places")

;; This package is a minor mode to visualize blanks (TAB, (HARD) SPACE and NEWLINE).
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)

;; Google C style
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)

;; (i wonder if there is a better way to generate the load list here)
;; the commands:
;; C-u M-! $ ls custom/
;; C-x ( <then do formatting stuff and go to next line> C-x )
;; to run macro:
;; C-u 0 C-x e
(load "00common_setup.el")
(load "ack-and-a-half.el")
(load "autocomplete.el")
(load "dash-at-point-kbd.el")
(load "doc-view-mode-setup.el") ;; M-[ and M-] for nav in other win
(load "exec-path-fs.el")
(load "flx-ido.el")
(load "google-c-style.el")
(load "haml-mode.el")
(load "ido.el")
(load "magit.el")
(load "markdown-mode-setup.el")
(load "mit-scheme-setup.el")
(load "quack-setup.el")
(load "rainbow-delimiters-setup.el")
(load "rinari.el")
(load "ruby-electric.el")
(load "saveplace.el")
(load "smartparens-setup.el")
(load "whitespace.el")
(load "w3m-setup.el")
(load "yasnippet.el")
(load "zenburn.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(quack-programs (quote ("/opt/boxen/homebrew/bin/mit-scheme" "bigloo" "csi" "csi -hygienic" "gosh" "gracket" "gsi" "gsi ~~/syntax-case.scm -" "guile" "kawa" "mit-scheme" "racket" "racket -il typed/racket" "rs" "scheme" "scheme48" "scsh" "sisc" "stklos" "sxi"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
