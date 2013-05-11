(defun write-buffer-file-to-tmux-buffer ()
  (interactive)
  (let ((fn (buffer-file-name)))
    (if fn
        (shell-command
         (concat "tmux load-buffer "
                 (shell-quote-argument fn)))
      (error "Not a file-backed buffer"))))

(global-set-key (kbd "C-c t") 'write-buffer-file-to-tmux-buffer)

;; invoke M-x w/out the alt key
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; lose the UI
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; better deleting
(global-set-key "\C-w" 'backward-kill-word)
;; note: c-x\c-k no longer available for edit-kbd-macro
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

;; for issues w/ pdflatex
;; (getenv "PATH")
;; (setenv "PATH"
;; (concat
;; "/usr/texbin" ":"
;; (getenv "PATH")))

;; for latex stuff (from http://emacswiki.org/emacs/AUCTeX)
;; (setq TeX-auto-save t)
;; (setq TeX-parse-self t)
;; (setq-default TeX-master nil)
;; (add-hook 'LaTeX-mode-hook 'visual-line-mode)
;; (add-hook 'LaTeX-mode-hook 'flyspell-mode)
;; (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
;; (add-hook 'LaTeX-mode-hook 'turn-on-reftex)
;; (setq reftex-plug-into-AUCTeX t)
;; (setq TeX-PDF-mode t)

;; for auctex
;; (add-to-list 'load-path "/usr/local/share/emacs/site-lisp")
;; (require 'tex-site)
;; (load "auctex.el" nil t t)
;; (load "preview-latex.el" nil t t)


;; adding for reftex
;; from here: http://www.gnu.org/software/auctex/manual/reftex.html#Installation
;; (add-to-list 'load-path "/usr/local/share/emacs/site-lisp")
;; (require 'reftex)
;; (add-hook 'LaTeX-mode-hook 'turn-on-reftex)   ; with AUCTeX LaTeX mode
;; (add-hook 'latex-mode-hook 'turn-on-reftex)   ; with Emacs latex mode

;; adding for cedet
;; (load-file "~/cedet-1.0pre6/common/cedet.el")

;; adding for ecb marmalade
;; (require 'package)
;; (add-to-list 'package-archives 
;;    '("marmalade" .
;;      "http://marmalade-repo.org/packages/"))
;; s(package-initialize)

;; adding for ecb
;; (add-to-list 'load-path "~/ecb-2.40")
;; (require 'ecb)

;; adding ruby-electric 'n stuff
(add-to-list 'load-path "~/.emacs.d")
(require 'ruby-electric)
(add-hook 'ruby-mode-hook 'ruby-electric-mode)

;; Interactively Do Things (added w/ rinari)
(require 'ido)
(ido-mode t)

;; Rinari
(add-to-list 'load-path "~/rinari")
(require 'rinari)
(add-hook 'ruby-mode-hook 'rinari-minor-mode)

;; haml (github.com/nex3/haml-mode)
(add-to-list 'load-path "~/haml-mode")
(require 'haml-mode)
(add-hook 'haml-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (define-key haml-mode-map "\C-m" 'newline-and-indent)))

;; cpp formatting (commented out b/c weird error. fixing...)
;;(c-set-style "stroustrup")
;;(add-hook 'c-mode-hook
;;          (lambda () "Set c-c c-c to comment-region"
;;            (local-set-key "\c-c\C-c" 'comment-region)
;;            (setq (comment-column 65))))

;; Google C style
(add-to-list 'load-path "~/.emacs.d")
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)

(add-to-list 'load-path "~/.emacs.d")
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)

(require 'saveplace)
(setq-default save-place t)


(add-to-list 'exec-path "/usr/local/bin/")
(add-to-list 'load-path "/Applications/Emacs.app/Contents/Resources/site-lisp/w3m")
(require 'w3m-load)
