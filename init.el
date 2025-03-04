;; init.el --- -*- lexical-binding: t -*-
;;
;; @bgcicca <https://www.bgcicca.com.br>


(let ((minver "27.1"))
  (when (version< emacs-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))
(when (version< emacs-version "28.1")
  (message "Your Emacs is old, and some functionality in this config will be disabled. Please upgrade if possible."))

(setq user-emacs-directory (file-name-directory load-file-name))
(add-to-list 'load-path (expand-file-name "elisp" user-emacs-directory))

(require 'init-packages)
(require 'init-symbols)
(require 'init-settings)
(require 'init-vertico)
(require 'init-themes)
(require 'init-xah-fly)
(require 'init-functions)
(require 'init-asm)
(require 'init-web-mode)
(require 'init-mmm-mode)
(require 'init-haskell)
(require 'init-java)
(require 'init-snippets)
(require 'init-cl)
(require 'init-org)
(require 'init-dashboard)
(require 'init-treemacs)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(package-lint esup ## slime vertico)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
