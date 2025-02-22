(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ignored-local-variable-values
   '((eval and buffer-file-name
           (not
            (eq major-mode 'package-recipe-mode))
           (or
            (require 'package-recipe-mode nil t)
            (let
                ((load-path
                  (cons "../package-build" load-path)))
              (require 'package-recipe-mode nil t)))
           (package-recipe-mode))
     (eval when
           (fboundp 'rainbow-mode)
           (rainbow-mode 1))))
 '(org-agenda-files '("~/notes/agenda.org"))
 '(package-selected-packages
   '(vertico-prescient neotree package-lint org-preview-html doom catppuccin-theme dashboard vterm-toggle vterm java-snippets ac-haskell-process auto-complete haskell-mode markdown-mode gruber-darker-theme gams-ac gams-mode ghc-imported-from ghci-completion github-dark-vscode-theme gruvbox-theme lsp-pyright lsp-ui lsp-mode vertico-posframe vertico treemacs all-the-icons doom-themes hydra))
 '(warning-suppress-log-types
   '((comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (emacs)
     (emacs)))
 '(warning-suppress-types
   '((comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (comp)
     (emacs)
     (emacs))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
(provide 'custom)