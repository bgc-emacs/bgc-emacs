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
  :custom
  (company-idle-delay 0.0)
  (company-minimum-prefix-length 1)
  (company-require-match 'never)
  :init
  (global-company-mode 1))

(use-package company-box
  :ensure t
  :after company
  :config
  (company-box-mode 1))

(use-package company-shell
  :ensure t
  :after company
  :config
  (add-to-list 'company-backends 'company-shell))

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
