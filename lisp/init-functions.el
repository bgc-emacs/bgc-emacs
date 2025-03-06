;;; init-functions.el --- Ultils functions -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun my-eshell-split-window ()
  (interactive)
  (split-window-below)         
  (other-window 1)             
  (eshell))   

(defun my-ielm-split-window ()
  (interactive)
  (split-window-below)
  (other-window 1)
  (ielm))

(defun bgc/lsp-mode-setup ()
  (setq lsp-headerline-breadcrumb-segments '(path-up-to-project file symbols))
  (lsp-headerline-breadcrumb-mode))

(defun bgc/duplicate-line ()
  (interactive)
  (let ((currline (thing-at-point 'line)))
    (save-excursion
      (beginning-of-line)
      (insert currline))))

(defun bgc/reload-settings ()
  (interactive)
  (load-file (concat user-emacs-directory "init.el")))

(defun bgc/open-emacs-config ()
  (interactive)
  (find-file (concat user-emacs-directory "init.el")))

(defun bgc/emacs-personal-files ()
  (interactive)
  (counsel-find-file user-emacs-directory))

(defun bgc/open-dired ()
  (interactive)
  (dired default-directory))

(defun move-line-up ()
  (interactive)
  (transpose-lines 1)
  (forward-line -2))

(defun move-line-down ()
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1))

(global-set-key (kbd "M-<up>") 'move-line-up) ;; Alt + ↑
(global-set-key (kbd "M-<down>") 'move-line-down) ;; Alt + ↓
(provide 'init-functions)
