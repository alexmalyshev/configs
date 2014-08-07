;; -*- emacs-lisp -*-

;; Save backup and autosave files to the temp directory.
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

;; Default to 2 space indent and replace tabs with spaces.
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default fill-column 78)

;; Show row,column numbers.
(line-number-mode t)
(column-number-mode t)

;; Turn off the pesky menu bar at the top.
(menu-bar-mode -1)

;; Enable the mouse.
(xterm-mouse-mode t)

;; Use C-w for killing words like bash does, and move kill-region to C-q.
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-q") 'kill-region)

;; Highlight lines past 80 columns in all files, as well as trailing whitespace.
(require 'whitespace)
(setq whitespace-style '(face lines-tail trailing))
(global-whitespace-mode t)

;; Add MELPA packages.
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
