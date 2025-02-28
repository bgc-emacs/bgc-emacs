(use-package projectile)
(use-package flycheck)
(use-package yasnippet
  :config
  (yas-global-mode))
(use-package lsp-mode
  :hook
  ((lsp-mode . lsp-enable-which-key-integration))
  :config
  (setq lsp-completion-enable-additional-text-edit nil))
(use-package company)
(use-package lsp-ui)
(use-package which-key
  :config
  (which-key-mode))
(use-package lsp-java
  :config
  (add-hook 'java-mode-hook 'lsp))
(use-package dap-mode
  :after lsp-mode
  :config
  (dap-auto-configure-mode))
(use-package dap-java
  :ensure nil)
(use-package helm-lsp)
(use-package helm
  :config (helm-mode))

(provide 'init-java)
