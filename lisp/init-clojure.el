;;; init-clojure.el --- Clojure configuration -*- lexical-binding: t; -*-

(use-package clojure-mode
  :ensure t
  :defer t
  :config
  (add-hook 'clojure-mode-hook #'paredit-mode)
  (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode))

(use-package cider
  :ensure t
  :after clojure-mode
  :pin "melpa"
  :defer t
  :config
  (setq cider-repl-pop-to-buffer-on-connect nil
        cider-repl-display-help-banner nil))

(provide 'init-clojure)
;;; init-clojure.el ends here
