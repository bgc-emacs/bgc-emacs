;;; init-cc-mode.el --- C mode configuration -*- lexical-binding: t; -*-

(use-package cc-mode
  :ensure nil
  :bind (:map c-mode-base-map
              ("<f12>" . compile))
  :init (setq-default c-basic-offset 4))
(provide 'init-cc-mode)
