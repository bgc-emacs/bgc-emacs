;; init.el --- -*- lexical-binding: t -*-
;;
;; @bgcicca <https://www.bgcicca.com.br>


(let ((config-dir (or (file-name-directory load-file-name)
                      (file-name-directory buffer-file-name)
                      default-directory)))
  (setq user-emacs-directory config-dir)
  (add-to-list 'load-path (expand-file-name "elisp" config-dir)))

(require 'init-symbols)
(require 'init-packages)
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
