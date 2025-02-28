(use-package haskell-mode
  :ensure t)

(use-package eglot
  :ensure t
  :hook (haskell-mode . eglot-ensure)
  :config
  (setq-default eglot-workspace-configuration
                '(:haskell (:plugin (:stan (:globalOn t))
                                    :formattingProvider "ormolu")))
  :custom
  (eglot-autoshutdown t)  
  (eglot-confirm-server-initiated-edits nil))

(provide 'init-haskell)
