;; Save backup and autosave files to the temp directory
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

;; Convert tabs to spaces
(setq-default indent-tabs-mode nil)

;; Default to 2 space indents
(setq-default tab-width 2)

(setq-default show-trailing-whitespace t)

;; Show row,column numbers
(column-number-mode)

;; Does anyone actually use this thing?
(menu-bar-mode -1)

;; Use C-w for killing words like bash does, and move kill-region to C-q
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-q") 'kill-region)
