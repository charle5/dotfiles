;; A GNU Emacs library to setup environment variables from the user's shell.
;; On OS X, an Emacs instance started from the graphical user interface will
;; have a different environment than a shell in a terminal window, because OS X
;; does not run a shell during the login.

;; This sets $MANPATH, $PATH and exec-path from your shell, but only on OS X.
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; add stuff like the below for other envs
;; (exec-path-from-shell-copy-env "PYTHONPATH")
