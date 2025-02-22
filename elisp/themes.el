(package-install 'doom-themes)

(add-to-list 'custom-theme-load-path
             "~/.emacs.d/themes/")
;; (load-theme 'gruber-darker t)
;; (load-theme 'catppuccin :no-confirm)
(load-theme 'fire-obsidian t)
(provide 'themes)