(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-PDF-mode t)
 '(TeX-save-query nil)
 '(TeX-view-program-list (quote (("open" "open -a Skim %o"))))
 '(TeX-view-program-selection
   (quote
    (((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "open")
     (output-html "xdg-open"))))
 '(ansi-color-for-comint-mode t)
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 211 t)
 '(aquamacs-tool-bar-user-customization nil t)
 '(auto-revert-verbose nil)
 '(blink-cursor-mode nil)
 '(c-basic-offset 2)
 '(c-default-style "k&r")
 '(column-number-mode t)
 '(cs164-basic-offset 2)
 '(cs164-indent-automatically t)
 '(cursor-type (quote (bar . 2)))
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("6615e5aefae7d222a0c252c81aac52c4efb2218d35dfbb93c023c4b94d3fa0db" "c793221e18b9e52ffa82cf09ee6398322293e486a80ac7ea6458e4f0da04ac0c" "54d1bcf3fcf758af4812f98eb53b5d767f897442753e1aa468cfeb221f8734f9" "36afe64261e1de73fcfadedf154e4bc2c9ec1969bde0c21798d31366897bc4d2" "69349beba557a65bb06f89b28b8fd2890c742f07" "1440d751f5ef51f9245f8910113daee99848e2c0" "485737acc3bedc0318a567f1c0f5e7ed2dfde3fb" default)))
 '(debug-on-error nil)
 '(default-input-method "TeX")
 '(delete-by-moving-to-trash t)
 '(delete-selection-mode t)
 '(dired-details-hidden-string "")
 '(doc-view-continuous t)
 '(enable-recursive-minibuffers t)
 '(eshell-buffer-shorthand nil)
 '(eshell-cmpl-cycle-completions nil)
 '(eshell-review-quick-commands (quote not-even-short-output))
 '(ffap-machine-p-known (quote reject))
 '(fill-column 80)
 '(global-auto-revert-mode nil)
 '(global-auto-revert-non-file-buffers nil)
 '(global-hl-line-mode nil)
 '(global-whitespace-mode t)
 '(ido-default-buffer-method (quote selected-window))
 '(ido-enable-flex-matching t)
 '(ido-everywhere t)
 '(ido-file-extensions-order (quote (".tex" ".pdf")))
 '(ido-max-file-prompt-width 0.6)
 '(ido-mode (quote both) nil (ido))
 '(ido-ubiquitous-command-exceptions (quote (w3m-goto-url w3m-goto-url-new-session)))
 '(ido-use-filename-at-point (quote guess))
 '(ido-use-url-at-point t)
 '(ido-use-virtual-buffers t)
 '(ido-vertical-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(minibuffer-depth-indicate-mode t)
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount (quote (2 ((shift) . 1))))
 '(mumamo-chunk-coloring 2)
 '(ns-alternate-modifier (quote meta))
 '(ns-command-modifier (quote meta))
 '(ns-tool-bar-display-mode (quote both) t)
 '(ns-tool-bar-size-mode (quote regular) t)
 '(org-src-fontify-natively t)
 '(org-startup-folded nil)
 '(org-startup-truncated nil)
 '(osx-key-mode nil)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.milkbox.net/packages/"))))
 '(pop-up-windows t)
 '(py-indent-offset 2)
 '(python-indent-offset 2)
 '(recentf-max-saved-items 200)
 '(require-final-newline t)
 '(savehist-mode t)
 '(scroll-bar-mode nil)
 '(semantic-default-submodes
   (quote
    (global-semantic-highlight-func-mode global-semantic-decoration-mode global-semantic-stickyfunc-mode global-semantic-idle-completions-mode global-semantic-idle-scheduler-mode global-semanticdb-minor-mode global-semantic-mru-bookmark-mode)))
 '(shift-select-mode nil)
 '(show-paren-delay 0.0)
 '(show-paren-mode t)
 '(tab-stop-list
   (quote
    (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120)))
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(tramp-default-method "ssh")
 '(tramp-verbose 2)
 '(transient-mark-mode t)
 '(undo-tree-auto-save-history t)
 '(undo-tree-history-directory-alist (quote (("." . "~/.emacs.d/undo-history/"))))
 '(undo-tree-mode-lighter "")
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(vc-follow-symlinks t)
 '(vc-handled-backends nil)
 '(visual-line-mode nil t)
 '(w3m-confirm-leaving-secure-page nil)
 '(w3m-use-cookies t)
 '(w3m-use-favicon nil)
 '(w3m-use-title-buffer-name t)
 '(whitespace-global-modes (quote (scala-mode)))
 '(whitespace-line-column nil)
 '(whitespace-style (quote (face tabs lines-tail)))
 '(winsize-desired-width 80)
 '(word-wrap t)
 '(x-select-enable-clipboard t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-diff-add ((t (:inherit diff-added)))))
(put 'narrow-to-region 'disabled nil)
