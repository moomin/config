;; add search path
(add-to-list 'load-path "~/.emacs.d/")

;; don't display startup message
(setq inhibit-startup-message t)

;; disable menu bar
(menu-bar-mode -1)

;; disable desktop file
(desktop-save-mode -1)

;; force utf-8 for all files
(setq file-name-coding-system 'utf-8)

(custom-set-variables
'(column-number-mode t)
'(default-input-method "russian-computer") 
'(display-time-mode t)
'(tool-bar-mode nil)
'(word-wrap t))

(fset 'yes-or-no-p 'y-or-n-p)

;; color themes 
(if (load "color-theme" t)
  (progn
   (require 'color-theme)
   (color-theme-initialize)
   (color-theme-arjen)
  )
)

;; php mode
(if (load "php-mode" t) (require 'php-mode))
(if (load "php-mode-electric" t) (require 'php-electric))

;; abbreviations mode
(if (load "msf-abbrev" t)
 (progn
  (require 'msf-abbrev)
  (setq-default abbrev-mode t)
  (setq save-abbrevs nil)
  (setq msf-abbrev-root "~/.emacs.d/abb")
  (global-set-key (kbd "C-c a") 'msf-abbrev-define-new-abbrev-this-mode)
  (msf-abbrev-load)
 )
)

;; add shortcuts
(global-set-key [?\C-z] 'shell)
(global-set-key [?\C-x ?\C-g] 'goto-line)
(global-set-key [?\C-x ?\C-b] 'ibuffer)

;; add workspaces
;; (require 'workspaces)
;; (global-set-key [?\C-q] 'workspace-goto)

;; use two spaces instead of tabs 
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default c-basic-offset 2)

;; load my library
(load "mmn-init.el" t)

;; load local LISP code (for example override tab width)
(load "localcode" t)