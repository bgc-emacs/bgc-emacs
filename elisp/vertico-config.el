(use-package vertico
    :init
  (vertico-mode))

(use-package vertico-posframe
  :after vertico
  :custom
  (vertico-posframe-parameters
   '((left-fringe . 8)
     (right-fringe . 8)))
  :config
  (vertico-posframe-mode 1))
(provide 'vertico-config)