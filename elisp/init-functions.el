;;; init-functions.el --- Ultils functions -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun my-eshell-split-window ()
  
  (interactive)
  (split-window-below)         
  (other-window 1)             
  (eshell))   

(defun open-dired ()
  
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
