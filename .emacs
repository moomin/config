;; add search path
(add-to-list 'load-path "~/.emacs.d/")

(custom-set-variables
'(column-number-mode t)
'(default-input-method "russian-computer") 
'(display-time-mode t)
'(tool-bar-mode nil)
'(word-wrap t))

;; don't display startup message
(setq inhibit-startup-message t)

(fset 'yes-or-no-p 'y-or-n-p)

;; force utf-8 for all files
(setq file-name-coding-system 'utf-8)

;; see how this can be worked out if we don't have color-theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-arjen)

;; somehow make int just include and not require
(require 'php-mode)
(require 'php-electric)

;; abbreviations mode
(require 'msf-abbrev)
(setq-default abbrev-mode t)
(setq save-abbrevs nil)
(setq msf-abbrev-root "~/.emacs.d/abb")
(global-set-key (kbd "C-c a") 'msf-abbrev-define-new-abbrev-this-mode)
(msf-abbrev-load)

(global-set-key [?\C-z] 'shell)
(global-set-key [?\C-x ?\C-g] 'goto-line)
(global-set-key [?\C-x ?\C-b] 'ibuffer)

(require 'workspaces)
(global-set-key [?\C-q] 'workspace-goto)

;; disable desktop file
(desktop-save-mode nil)

;; use two spaces instead of tabs 
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default c-basic-offset 2)

;; (load-file "~/.emacs.d/mmn-init.el")

;; disable menu bar
(menu-bar-mode -1)