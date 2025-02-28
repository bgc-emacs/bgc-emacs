(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'xah-fly-keys)

(define-key xah-fly-insert-map (kbd "C-s") 'save-buffer)
(define-key xah-fly-insert-map (kbd "C-n") 'xah-new-empty-buffer)
(define-key xah-fly-insert-map (kbd "C-k") 'kill-buffer)
(define-key xah-fly-insert-map (kbd "C-e") 'my-eshell-split-window) 
(define-key xah-fly-insert-map (kbd "C-t") 'treemacs)

(define-key xah-fly-insert-map (kbd "C-w") 'delete-window) 
(define-key xah-fly-command-map (kbd "S") 'save-buffer)
(define-key xah-fly-command-map (kbd "K") 'kill-buffer)
(define-key xah-fly-command-map (kbd "TD") 'org-todo)
(define-key xah-fly-command-map (kbd "D") 'dired-create-directory)
(define-key xah-fly-command-map (kbd "F") 'dired-create-empty-file)
(define-key xah-fly-command-map (kbd ".") 'isearch-forward)

(xah-fly-keys 1)

(provide 'init-xah-fly)
