(add-to-list 'load-path "~/.emacs.d")
(require 'mercurial)
(require 'js2-mode)
(autoload 'thrift-mode "thrift" nil t nil)
(setq auto-mode-alist (append '(("\\.thrift$" . thrift-mode))
                              auto-mode-alist))
(require 'highlight-80+)
(add-hook 'c++-mode-hook (lambda () (highlight-80+-mode t)))
(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist
      (cons '("\\.text" . markdown-mode) auto-mode-alist))

(add-to-list 'load-path "~/.emacs.d/scala")
(add-to-list 'load-path "~/.emacs.d/ensime/elisp")
(require 'scala-mode-auto)
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(add-to-list 'load-path "~/.emacs.d/undo-tree")
(require 'undo-tree)

(add-to-list 'load-path "~/.emacs.d/dtrt-indent")
(require 'dtrt-indent)

(add-to-list 'load-path "~/.emacs.d/smex")
(require 'smex)

(if (string-match "GNU Emacs 23" (emacs-version))
    (load "~/.emacs.d/nxhtml/autostart.el"))

(load "~/.emacs.d/customizations.el")

(global-unset-key "\C-z")
(global-set-key "\M-/" 'hippie-expand)

(defun variable-pitch ()
  "Go into text editing style."
  (interactive)
  (variable-pitch-mode t))

(defun larger ()
  "Increase the text size by one step over default."
  (interactive)
  (text-scale-increase 1))

(add-hook 'LaTeX-mode-hook 'variable-pitch)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'larger)
(add-hook 'BibTeX-mode-hook 'variable-pitch)

;; Use Python mode for TARGETS files
(setq auto-mode-alist (cons '("\\/TARGETS$" . python-mode) auto-mode-alist))

;; Use C++ mode for .h files
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; Utility functions
(defun indent-buffer ()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil))

(defun revert-all-buffers ()
  "Refreshes all open buffers from their respective files."
  (interactive)
  (dolist (buf (buffer-list))
    (with-current-buffer buf
      (when (and (buffer-file-name) (not (buffer-modified-p)))
        (revert-buffer t t t) )))
  (message "Refreshed open files.") )

(defun cs61a ()
  "Loads cs61a utilities."
  (interactive)
  (require 'cs61a))

;; Use smex for completing M-x
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Split into as many vertical windows as possible
(defun smart-split ()
  "Split the frame into exactly as many 80-column sub-windows as possible."
  (interactive)
  (defun ordered-window-list ()
    "Get the list of windows in the select frame, starting from the one at the top left."
    (window-list (selected-frame) 'no-minibuf (frame-first-window)))
  (defun resize-windows-destructively (windows)
    "Resize each window in the list to be 80 characters wide. If there's not enough space to do that, delete the appropriate window until there is space."
    (when windows
      (condition-case nil
          (progn (adjust-window-trailing-edge (first windows) (- 80 (window-width (first windows))) t)
                 (resize-windows-destructively (cdr windows)))
        (error (if (cdr windows)
                   (progn (delete-window (cadr windows))
                          (resize-windows-destructively (cons (car windows) (cddr windows))))
                 (delete-window (car windows)))))))
  (defun subsplit (w)
    "If the given window can be split into multiple 80-column windows, do it."
    (when (> (window-width w) (* 2 81))
      (split-window w 82 t)
      (subsplit w)))
  (resize-windows-destructively (ordered-window-list))
  (walk-windows 'subsplit)
  (balance-windows))

;; Prompt before quitting
(defun prompt-quit-emacs ()
  "Prompt before quitting Emacs"
  (interactive)
  (if (y-or-n-p (format "Really quit Emacs? "))
      (if (< emacs-major-version 22)
          (save-buffers-kill-terminal)
        (save-buffers-kill-emacs))
    (message "Canceled exit")))
(when window-system
  (global-set-key (kbd "C-x C-c") 'prompt-quit-emacs))

;; Site-local config
(when (file-exists-p "~/.emacs-site-local")
  (load-file "~/.emacs-site-local"))
