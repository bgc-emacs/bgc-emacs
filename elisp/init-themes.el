;;; init-themes.el --- Themes customisations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-to-list 'load-path (expand-file-name "themes" user-emacs-directory))
(add-to-list 'custom-theme-load-path
             "~/.emacs.d/themes/")
;; (load-theme 'gruber-darker t)
;; (load-theme 'catppuccin :no-confirm)
(load-theme 'fire-obsidian t)
(provide 'init-themes)
