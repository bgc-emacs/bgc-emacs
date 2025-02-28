(use-package vertico
  :ensure t
  :init
  (vertico-mode 1))

(use-package vertico-posframe
  :ensure t
  :after vertico
  :custom
  (vertico-posframe-parameters
   '((left-fringe . 8)
     (right-fringe . 8)))
  :config
  (vertico-posframe-mode 1))

(provide 'init-vertico)
