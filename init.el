;; init.el --- -*- lexical-binding: t -*-
;;

(add-to-list 'load-path (expand-file-name "elisp" user-emacs-directory))

(require 'symbols)
(require 'packages)
(require 'themes)
(require 'options)
(require 'xah-fly-keys)
(require 'functions)
(require 'use-packages)
(require 'org-config)
(require 'vertico-config)
(require 'treemacs)
(require 'lsp-and-compilation)
(require 'lisp-helpers)
(require 'custom)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(yasnippet which-key vertico-posframe use-package slime rainbow-delimiters projectile paredit org-bullets ob-go ob-async nasm-mode lsp-ui lsp-pyright lsp-java helm-lsp haskell-mode flycheck eglot doom-themes company ccls all-the-icons)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
