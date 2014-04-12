;; Save backup files in a set folder
(setq backup-directory-alist `(("." . "~/.emacs-backups")))

;; Convert tabs to spaces
(setq-default indent-tabs-mode nil)

;; Default to 2 space indents
(setq-default tab-width 2)

;; Show row,column numbers
(column-number-mode)
