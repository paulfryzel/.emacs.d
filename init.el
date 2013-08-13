(load "~/.emacs.d/better-defaults/better-defaults")

(set-face-attribute 'default nil :font "Menlo-14")
(add-to-list 'custom-theme-load-path "~/.emacs.d/noctilux-theme")
(load-theme 'noctilux t)

; (set-frame-parameter nil 'fullscreen 'fullboth)
(add-to-list 'default-frame-alist '(height . 40))
(add-to-list 'default-frame-alist '(width . 140))

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq inhibit-startup-message t)

(delete-selection-mode t)
(blink-cursor-mode t)
(show-paren-mode t)
(column-number-mode t)

(if (display-graphic-p)
      (progn
        (set-fringe-style -1)
        (tool-bar-mode -1)
        (tooltip-mode -1)
        (menu-bar-mode -1)
        (scroll-bar-mode -1)))

(require 'linum)
(global-linum-mode 1)
(setq linum-format "%4d ")

(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
