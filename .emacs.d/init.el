;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Toor's Emacs config
;; Emacs with
;;▓█████ ██▒   █▓ ██▓ ██▓   
;;▓█   ▀▓██░   █▒▓██▒▓██▒    
;;▒███   ▓██  █▒░▒██▒▒██░   
;;▒▓█  ▄  ▒██ █░░░██░▒██░  
;;░▒████▒  ▒▀█░  ░██░░██████▒ 
;;░░ ▒░ ░  ░ ▐░  ░▓  ░ ▒░▓  ░
;; ░ ░  ░  ░ ░░   ▒ ░░ ░ ▒  ░
;;   ░       ░░   ▒ ░  ░ ░     
;;   ░  ░     ░   ░      ░  ░  
;;           ░                    mode.
;;
;; Automatically sets up use-package, else
;; run M-x package-install-selected-packages.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; START. Package Management
;; 1. Auto-generated
;; 2. Behavior
;; 3. Packages
;; 4. Appearance
;; 5. Keybinds
;; 6. Custom Functions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; NOTE: IF PACKAGES AREN'T INSTALLING DUE TO 'BAD REQUEST' OR SIMILAR, TRY
;(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
;; C-x C-e eval-last-sexp
;; I know I'll forget.

;;;; START. Package Management

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/")
             '("gnu" . "https://elpa.gnu.org/packages/"))
(package-initialize)
;;(package-refresh-contents)

;; bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))
(require 'bind-key)  

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 1. Auto-generated configuration from M-x customize
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#1B2229" "#e74c3c" "#b6e63e" "#e2c770" "#268bd2" "#fb2874" "#66d9ef" "#ffffff"])
 '(column-number-mode t)
 '(custom-safe-themes
   '("691d671429fa6c6d73098fc6ff05d4a14a323ea0a18787daeb93fde0e48ab18b" "34cf3305b35e3a8132a0b1bdf2c67623bc2cb05b125f8d7d26bd51fd16d547ec" "df6dfd55673f40364b1970440f0b0cb8ba7149282cf415b81aaad2d98b0f0290" "342f853c3d097d60a01a8e17559d2cc4e6ccd4c8e8c4d32cdfb5d53fdd50ca27" "7964b513f8a2bb14803e717e0ac0123f100fb92160dcf4a467f530868ebaae3e" "c5878086e65614424a84ad5c758b07e9edcf4c513e08a1c5b1533f313d1b17f1" "e3daa8f18440301f3e54f2093fe15f4fe951986a8628e98dcd781efbec7a46f2" "7ec8fd456c0c117c99e3a3b16aaf09ed3fb91879f6601b1ea0eeaee9c6def5d9" "8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a" "4990532659bb6a285fee01ede3dfa1b1bdf302c5c3c8de9fad9b6bc63a9252f7" "88f7ee5594021c60a4a6a1c275614103de8c1435d6d08cc58882f920e0cec65e" "e87fd8e24e82eb94d63b1a9c79abc8161d25de9f2f13b64014d3bf4b8db05e9a" "f058c82b57bc27ff4288f7ff702fcc4d298608c4de5933224aaceb770c0c9e19" default))
 '(doc-view-continuous t)
 '(doom-modeline-mode t)
 '(fci-rule-color "#555556")
 '(global-linum-mode nil)
 '(highlight-indent-guides-method 'bitmap)
 '(initial-scratch-message nil)
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#fd971f"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#b6e63e"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#525254"))
 '(mood-line-mode t)
 '(objed-cursor-color "#99324B")
 '(package-hidden-regexps '(""))
 '(package-selected-packages
   '(highlight-indent-guides markdown-preview-mode company flexoki-themes doom-modeline sly racket-mode paredit zen-mode sublimity minimap minimap-mode deft ace-window diminish Magit which-key use-package bind-key theme-changer evil-mc all-the-icons-ivy doom-themes neotree markdown-mode lua-mode magit ivy))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#1c1e1f")
 '(vc-annotate-color-map
   (list
    (cons 20 "#b6e63e")
    (cons 40 "#c4db4e")
    (cons 60 "#d3d15f")
    (cons 80 "#e2c770")
    (cons 100 "#ebb755")
    (cons 120 "#f3a73a")
    (cons 140 "#fd971f")
    (cons 160 "#fc723b")
    (cons 180 "#fb4d57")
    (cons 200 "#fb2874")
    (cons 220 "#f43461")
    (cons 240 "#ed404e")
    (cons 260 "#e74c3c")
    (cons 280 "#c14d41")
    (cons 300 "#9c4f48")
    (cons 320 "#77504e")
    (cons 340 "#555556")
    (cons 360 "#555556")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "IBM " :family "IBM Plex Mono")))))
;; Font :height is divided by 10

;;;; 2. Behavior

;; Tramp-mode
(require 'tramp)
(setq tramp-default-method "ssh")
;; This is important for preventing file~ backups
(setq make-backup-files nil)
;; Line numbers in all the buffers
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
;; UTF-8
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
;;; Code indentation styles
;; Linux-style for C code
(setq-default c-basic-offset 4
			  tab-width 4
			  indent-tabs-mode nil)
;; warn when opening files bigger than 100MB
(setq large-file-warning-threshold 100000000)
;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)
(show-paren-mode 1)
;; highlight brackets if visible, else entire expression
(setq show-paren-style 'mixed) ;'parenthesis or 'expression also available
;; Newline at end of file
(setq require-final-newline t)
;; revert buffers automatically when underlying files are changed externally
(global-auto-revert-mode t)
(setq history-delete-duplicates t)
;; Always load newest byte code
(setq load-prefer-newer t)
;; Don't prompt for running process
(defadvice save-buffers-kill-emacs (around no-query-kill-emacs activate)
  "Prevent annoying \"Active processes exist\" query when you quit Emacs."
  (cl-letf (((symbol-function #'process-list) (lambda ())))
    ad-do-it))
(setq kill-buffer-query-functions nil)
;; obsolete?
;;(setq redisplay-dont-pause t)
;; built-in alternative to smartparens
;; (don't use in conjunction with parinfer)
;(electric-pair-mode 1)
; Scroll just one line when hitting bottom of window
(setq scroll-conservatively 10000)
;; Automatically expand org mode headers
(setq org-startup-folded nil)

;;;; 3. Packages

;; Keep packages up-to-date
(require 'use-package-ensure
         :config (setq use-package-always-ensure t))
(use-package auto-package-update
  :config
  (setq auto-package-update-delete-old-versions t)
  (setq auto-package-update-hide-results t)
  (auto-package-update-maybe))
;; The most important package: vim-in-emacs
;; But first trying to deal with undo-tree and elpa being assholes
;(use-package undo-tree)
;  ;;  :pin gnu
;  :disabled)
;  :commands R)
(use-package evil
  :config
  (evil-mode))
;; undo-tree package often causes errors during initial install (and seems to be unmaintained?)
;; undo-fu is a simpler alternative and works fine with evil
(use-package undo-fu
  :after (evil)
  :config
  (define-key evil-normal-state-map "u" 'undo-fu-only-undo)
  (define-key evil-normal-state-map "\C-r" 'undo-fu-only-redo))
;; light-weight function completion for sub-menus like M-x
(use-package ivy
  :diminish
  :config
  (ivy-mode 1))
;; Company Mode, for autocompletion
(use-package company
  :diminish
  :config
  (add-hook 'after-init-hook 'global-company-mode))
(use-package which-key
  :defer 0.2
  :diminish which-key-mode
  :config (which-key-mode)
  (setq which-key-idle-delay 0.1))
(use-package all-the-icons)
(use-package all-the-icons-ivy
  :after (all-the-icons ivy)
  :custom (all-the-icons-ivy-buffer-commands '(ivy-switch-buffer-other-window))
  :config
  (add-to-list 'all-the-icons-ivy-file-commands 'counsel-dired-jump)
  (add-to-list 'all-the-icons-ivy-file-commands 'counsel-find-library)
  (all-the-icons-ivy-setup))
(use-package evil-mc
  :diminish
  ;; C-n/p for next/previous, C-t to skip, gru to undo, grq to exit mc
  :bind
  ("C-," . evil-mc-make-all-cursors)
  :config
  (global-evil-mc-mode 1))
;(use-package parinfer-rust-mode
;  :pin melpa
;  :bind
;  (("C-M-," . parinfer-toggle-mode))
;  :init
;  (add-hook 'clojure-mode-hook #'parinfer-rust-mode)
;  (add-hook 'emacs-lisp-mode-hook #'parinfer-rust-mode)
;  (add-hook 'common-lisp-mode-hook #'parinfer-rust-mode)
;  (add-hook 'scheme-mode-hook #'parinfer-rust-mode)
;  (add-hook 'racket-mode-hook #'parinfer-rust-mode)
;  (add-hook 'lisp-mode-hook #'parinfer-rust-mode))
;(use-package parinfer-rust-mode
;  :hook racket-mode emacs-lisp-mode common-lisp-mode scheme-mode lisp-mode clojure-mode
;  :init
;  (setq parinfer-rust-auto-download t))
(use-package paredit
  :config (paredit-mode))
(use-package doom-themes
  :config
  (doom-themes-visual-bell-config)
  (doom-themes-neotree-config)
  (doom-themes-org-config))
;; config: setq doom-modeline-height
(use-package doom-modeline
  :hook
  (after-init . doom-modeline-mode)
  :config
  (setq doom-modeline-minor-modes t)
  (setq doom-modeline-height 10))
;; Change theme automatically depending on time of day
(use-package theme-changer
  :init
  (setq calendar-latitude 49.00) 
  (setq calendar-longitude 9.00)
  :config
  (change-theme 'doom-solarized-light 'doom-gruvbox))
(use-package magit
  :bind
  ("C-x g" . magit-status))
;; Neotree
(use-package neotree
  :bind
  (([f7] . 'neotree-toggle))
  :config
  (setq neo-create-file-auto-open nil)
  (setq neo-auto-indent-point nil)
  (setq neo-confirm-create-file #'off-p)
  (setq neo-banner-message nil)
  (setq neo-show-updir-line nil)
  (setq neo-window-width 28)
  (setq neo-mode-line-type 'none)
  (setq neo-autorefresh nil)
  (setq neo-confirm-create-directory #'off-p)
  (setq neo-show-hidden-files nil)
  (setq neo-keymap-style 'concise)
  (setq neo-show-hidden-files t))
;; Recently opened files via C-x C-r
(use-package recentf
  :bind
  ("\C-x\ \C-r" . recentf-open-files)
  :config
  (recentf-mode 1)
  (setq recentf-max-menu-items 25))
(use-package diminish
  :config
  (diminish 'undo-tree-mode)
  (diminish 'visual-line-mode)
  (diminish 'eldoc-mode))
(use-package ace-window
  :bind
  ("M-o" . ace-window))
(use-package sly
  :config
  (setq inferior-lisp-program "ros run")
  (add-hook 'sly-mode-hook
	  (lambda ()
	    (unless (sly-connected-p)
	      (save-excursion (sly))))))
;(use-package geiser-guile)
; For some reason, geiser-racket will not load the file into the repl.
;(use-package geiser-racket)
(use-package racket-mode)
;  :config
;  (setq racket-program "C:/Program Files/Racket/Racket.exe"))
;(use-package deft
;  :bind ("<f8>" . deft)
;  :commands (deft)
;  :config
;  (setq deft-extensions '("txt" "md" "org"))
;  (setq deft-use-filter-string-for-filename t)
;  (setq deft-default-extension "org")
;  (setq deft-directory "A:/Sync/Obsidian")
;  (setq deft-use-filename-as-title t))
;(use-package zetteldeft
;  :requires deft
;  :config
;  (zetteldeft-set-classic-keybindings))
(use-package minimap)
(use-package markdown-mode)
;(use-package highlight-indent-guides
;  :config 
;  (add-hook 'prog-mode-hook 'highlight-indent-guides-mode))

;;;; 4. Appearance

;; Disable the GUI
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; Turn off the welcome screen
(setq inhibit-startup-screen t)
;; Disable Auto-wrapping lines
(global-visual-line-mode t)
;; Hilight current line
;; (global-hl-line-mode)
;; Line spacing
(setq-default line-spacing 3)

;;;; 5. Keybinds

;; use shift+(arrow) to move through split windows/frames
(windmove-default-keybindings)
 ;; Swap C-t and C-x, so it's easier to type on Dvorak layout
 ;; `keyboard-translate` does not work when attaching an emacsclient to
 ;; a running emacs in daemon mode, so instead we define the key in the
 ;; key-translation-map.
 ;; http://lists.gnu.org/archive/html/help-gnu-emacs/2009-10/msg00505.html
;(define-key key-translation-map [?\C-x] [?\C-t])
;(define-key key-translation-map [?\C-t] [?\C-x])
 ;;
(global-set-key (kbd "C-x C-k") 'kill-this-buffer)
(global-set-key (kbd "C-x t") 'load-theme)

;;;; 6. Custom Functions

(defun my/reload-dotemacs-file ()
  "reload your .emacs file without restarting Emacs"
  (interactive)
  (load-file "~/.emacs.d/init.el"))
;; error with shell-command-to-string, but unnecessary function anyway 
;; (defun my/test-emacs ()
;;   (interactive)
;;   (require 'async)
;;   (async-start
;;    (lambda () (shell-command-to-string)
;;          "emacs --batch --eval \"
;; (condition-case e
;;     (progn
;;       (load \\\"~/.emacs\\\")
;;       (message \\\"-OK-\\\"))
;;   (error
;;    (message \\\"ERROR!\\\")
;;    (signal (car e) (cdr e))))\""
;;    `(lambda (output)
;;       (if (string-match "-OK-" output)
;;           (when ,(called-interactively-p 'any)
;;             (message "All is well.")
;;         (switch-to-buffer-other-window "*startup error*")
;;         (delete-region (point-min) (point-max))
;;         (insert output)
;;         (search-backward "ERROR!")))
