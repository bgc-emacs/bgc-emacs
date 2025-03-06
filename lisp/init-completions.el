;;; init-completions.el --- auto completions configs -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package vertico
  :ensure t
  :commands vertico-mode
  :custom 
  (vertico-cycle t)
  :init
  (vertico-mode))

(use-package company
  :bind (:map company-active-map
              ("<tab>" . company-complete-selection))
  (:map lsp-mode-map
        ("<tab>" . company-indent-or-complete-common))
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.0)
  :config
  (global-company-mode 1))  

(use-package company-box
  :ensure t
  :hook (company-mode . company-box-mode))

(use-package vertico-posframe
  :ensure t
  :after vertico
  :custom
  (vertico-posframe-parameters
   '((left-fringe . 8)
     (right-fringe . 8)
     (internal-border-width . 1)
     (width . 80)
     (height . 10)
     (poshandler . posframe-poshandler-frame-center)))
  :config
  (vertico-posframe-mode 1))

(provide 'init-completions)
