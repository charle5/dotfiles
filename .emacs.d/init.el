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
(load "flx-ido.el")
(load "google-c-style.el")
(load "haml-mode.el")
(load "magit.el")
(load "rinari.el")
(load "ruby-electric.el")
(load "yasnippet.el")
(load "zenburn.el")
(load "ido.el")
