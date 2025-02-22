;; symbols.el --- Provide missing function definitions and variables for packages -*- lexical-binding: t; -*-

;; For treemacs:
(unless (boundp 'treemacs-last-period-regex-value)
  (defvar treemacs-last-period-regex-value "\\.[^\\.]+$"
    "Regex to identify file extension (default value)."))

(unless (fboundp 'treemacs-define-TAB-action)
  (defun treemacs-define-TAB-action (&rest args)
    "Placeholder for treemacs-define-TAB-action. Ignores ARGS."
    nil))

(unless (fboundp 'treemacs-define-RET-action)
  (defun treemacs-define-RET-action (&rest args)
    "Placeholder for treemacs-define-RET-action. Ignores ARGS."
    nil))

(unless (fboundp 'treemacs-follow-mode)
  (defun treemacs-follow-mode (arg)
    "Placeholder for treemacs-follow-mode. Ignores ARG."
    nil))

(unless (fboundp 'treemacs-filewatch-mode)
  (defun treemacs-filewatch-mode (arg)
    "Placeholder for treemacs-filewatch-mode. Ignores ARG."
    nil))

(unless (fboundp 'treemacs-fringe-indicator-mode)
  (defun treemacs-fringe-indicator-mode (mode)
    "Placeholder for treemacs-fringe-indicator-mode. Ignores MODE."
    nil))

;; For the missing variable 'treemacs-valid-button-states'
(unless (boundp 'treemacs-valid-button-states)
  (defvar treemacs-valid-button-states nil
    "Placeholder for treemacs-valid-button-states."))

;; For Emacs prior to version 29:
(unless (fboundp 'define-keymap)
  (defun define-keymap (&rest args)
    "Placeholder for define-keymap. Returns a sparse keymap ignoring ARGS."
    (make-sparse-keymap)))

(unless (fboundp 'keymap-set)
  (defun keymap-set (keymap key def)
    "Bind KEY to DEF in KEYMAP."
    (define-key keymap key def)))

(unless (fboundp 'treemacs-git-mode)
  (defun treemacs-git-mode (mode)
    "Placeholder for treemacs-git-mode. Accepts MODE but does nothing."
    nil))

(unless (fboundp 'treemacs-hide-gitignored-files-mode)
  (defun treemacs-hide-gitignored-files-mode (mode)
    "Placeholder for treemacs-hide-gitignored-files-mode. Accepts MODE but does nothing."
    nil))

(provide 'symbols)
