(add-to-list 'load-path "~/.emacs.d/")

(custom-set-variables
'(column-number-mode t)
'(default-input-method "russian-computer") 
'(display-time-mode t)
'(tool-bar-mode nil)
'(word-wrap t))

(setq inhibit-startup-message t)

(fset 'yes-or-no-p 'y-or-n-p)

(setq file-name-coding-system 'utf-8)

(require 'color-theme)
(color-theme-initialize)
(color-theme-arjen)

(require 'php-mode)
(require 'php-electric)

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

(desktop-save-mode t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default c-basic-offset 4)

;; org mode
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; (global-set-key "\C-cl" 'org-store-link)
;; (global-set-key "\C-ca" 'org-agenda)

;; (load-file "~/.emacs.d/mmn-init.el")
;; (menu-bar-mode -1)