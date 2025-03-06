(use-package projectile)
(use-package flycheck)
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

(provide 'init-java)
