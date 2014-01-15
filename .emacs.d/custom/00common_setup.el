;; Set the starting position and width and height of Emacs Window
(add-to-list 'default-frame-alist '(left . 0))
(add-to-list 'default-frame-alist '(top . 0))
(add-to-list 'default-frame-alist '(height . 45))
(add-to-list 'default-frame-alist '(width . 175))
 
;; invoke M-x w/out the alt key
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; lose the UI
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; Don't show startup screen
(setq inhibit-startup-screen t)

;; better deleting
(global-set-key "\C-w" 'backward-kill-word)
;; note: c-x\c-k no longer available for edit-kbd-macro
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)


;; copy the entire contents of a file using emacs copy mode in tmux.
;; emacs into a file in tmux, press 'C-c t' then '[prefix] C-c' to copy. paste to wherever!
(defun write-buffer-file-to-tmux-buffer ()
  (interactive)
  (let ((fn (buffer-file-name)))
    (if fn
        (shell-command
         (concat "tmux load-buffer "
                 (shell-quote-argument fn)))
      (error "Not a file-backed buffer"))))

(global-set-key (kbd "C-c t") 'write-buffer-file-to-tmux-buffer)

;; To get rid of Weird color escape sequences in Emacs.
;; Instruct Emacs to use emacs term-info not system term info
;; http://stackoverflow.com/questions/8918910/weird-character-zsh-in-emacs-terminal
(setq system-uses-terminfo nil)
