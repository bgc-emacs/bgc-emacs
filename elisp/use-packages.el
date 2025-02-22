(use-package projectile)
(use-package company)
(use-package which-key :config (which-key-mode))
(use-package lsp-java :config (add-hook 'java-mode-hook 'lsp))
(use-package dap-mode :after lsp-mode :config (dap-auto-configure-mode))
(use-package dap-java :ensure nil)
(use-package all-the-icons
    :ensure t)

;; snippets
(use-package yasnippet
  :ensure t
  :init
  
  (setq yas-snippet-dirs '("~/.emacs.d/snippets/"))
  
  :config
  
  (setq yas-triggers-in-field nil)
  (yas-global-mode 1)
  
  (yas-reload-all)
  
  (add-hook 'yas-after-reload-hook
            (lambda ()
              (message "Yasnippet snippets reloaded"))))

(use-package nasm-mode
  :ensure t
  :mode ("\\.asm\\'" . nasm-mode)
  :config
  (setq nasm-indent-level 4))

(use-package lsp-mode
  :ensure t
  :hook ((lsp-mode . lsp-enable-which-key-integration))
  :config (setq lsp-completion-enable-additional-text-edit nil))
(use-package lsp-ui
  :commands lsp-ui-mode
  :ensure t)
(use-package ccls
  :ensure t
  :config
  (setq ccls-executable "ccls")
  (setq lsp-prefer-flymake nil)
  (setq-default flycheck-disabled-checkers '(c/c++-clang c/c++-cppcheck c/c++-gcc))
  :hook ((c-mode c++-mode objc-mode) .
         (lambda () (require 'ccls) (lsp))))
(use-package flycheck
  :ensure t)
(use-package yasnippet
  :ensure t
  :config (yas-global-mode))
(use-package which-key
  :ensure t
  :config (which-key-mode))
(use-package helm-lsp
  :ensure t)
(use-package helm
  :ensure t
  :config (helm-mode))
(use-package lsp-treemacs
  :ensure t)

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
  (eglot-autoshutdown t)  ;; shutdown language server after closing last file
  (eglot-confirm-server-initiated-edits nil)  ;; allow edits without confirmation
  )

(use-package flymake
  :ensure nil
  :bind (:map global-map
              ("M-n" . #'flymake-goto-next-error)
              ("M-p" . #'flymake-goto-prev-error))
  :custom
  (flymake-show-diagnostics-at-end-of-line t)
  ;; (flymake-show-diagnostics-at-end-of-line 'short)
  )
(provide 'use-packages)