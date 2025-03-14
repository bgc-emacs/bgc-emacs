(use-package projectile)
(use-package flycheck)

(use-package which-key
  :defer t
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
  :defer t
  :ensure nil)
(use-package helm-lsp)
(use-package helm
  :defer t
  :config (helm-mode))

(provide 'init-java)
