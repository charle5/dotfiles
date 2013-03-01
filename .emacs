(defun write-buffer-file-to-tmux-buffer ()
  (interactive)
  (let ((fn (buffer-file-name)))
    (if fn
        (shell-command
         (concat "tmux load-buffer "
                 (shell-quote-argument fn)))
      (error "Not a file-backed buffer"))))

(global-set-key (kbd "C-c t") 'write-buffer-file-to-tmux-buffer)

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
