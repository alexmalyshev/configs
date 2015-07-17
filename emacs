;; -*- emacs-lisp -*-

;; Save backup and autosave files to the temp directory.
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

;; Default to 2 space indent and replace tabs with spaces.
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default fill-column 80)

;; Language specific indent levels.
(setq-default c-basic-offset 2)
(setq-default js-indent-level 2)
(setq-default rust-indent-offset 2)
(add-hook 'php-mode-hook (lambda () (setq c-basic-offset 2)))

;; Don't indent on opening a C++ namespace, an extern block, or on case labels.
(c-set-offset 'inextern-lang 0)
(c-set-offset 'innamespace 0)
(c-set-offset 'case-label 0)

;; Haskell mode makes us enable indentation manually.
(add-hook 'haskell-mode-hook 'haskell-indentation-hook)

;; Kill all trailing whitespace upon saving files.
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Show row,column numbers.
(line-number-mode t)
(column-number-mode t)

;; Turn off the pesky menu bar at the top.
(menu-bar-mode -1)

;; Better setting of frame background color.
(let ((frame-background-mode (if (display-graphic-p) 'light 'dark)))
  (frame-set-background-mode nil))

;; Enable the mouse.
(xterm-mouse-mode t)

;; Disable all version control.
(setq vc-handled-backends nil)

;; Automatically revert buffers as they're modified.
(global-auto-revert-mode 1)

;; Use C-w for killing words like bash does, and move kill-region to C-q.
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-q") 'kill-region)

;; Use ibuffer instead of list-buffers.
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Treat .h files as C++ files.
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; Highlight lines past 80 columns in all files, as well as trailing whitespace.
(require 'whitespace)
(setq whitespace-style '(face lines-tail trailing))
(global-whitespace-mode t)

;; Add MELPA packages.
(require 'package)
(package-initialize)
(let ((melpa '("melpa" . "http://melpa.milkbox.net/packages/")))
  (add-to-list 'package-archives melpa t))

(when (require 's nil t)
  ;; Print line comment from current column to fill-column.
  (defun print-delim ()
    (interactive)
    (let ((size (- fill-column (current-column)))
          (str (s-repeat fill-column (s-trim comment-start))))
      (insert (substring str 0 size))))
  (global-set-key (kbd "C-c C-_") 'print-delim))
