(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/color-theme")
(add-to-list 'load-path "~/.emacs.d/ecb")
(add-to-list 'load-path "~/.emacs.d/emacs-eclim")
(add-to-list 'load-path "~/.emacs.d/codepilot")
(add-to-list 'load-path "~/.emacs.d/icicles")
(add-to-list 'load-path "~/.emacs.d/gnuserv")
(add-to-list 'load-path "~/.emacs.d/yasnippet")
(add-to-list 'load-path "~/.emacs.d/auto-complete")
(add-to-list 'load-path "~/.emacs.d/python-mode")
(add-to-list 'load-path "~/.emacs.d/emacs-w3m")
(add-to-list 'load-path "~/.emacs.d/jdee-2.4.1/lisp")

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/dict")
(ac-config-default)

(setq default-frame-alist
'((top . 0)(left . 390)
(width . 55)(height . 32)(menubar-lines . 0)(tool-bar-lines . 0)
))
;;Read Bashes
(load "base.el")
;(load "cyexpand.el")
(load "cykbd.el")
(load "addon.el")
(load "cycode.el")

(setq default-line-spaceing 4)
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

(require 'linum)
(global-linum-mode 1)
(setq-default make-backup-files nil)

(global-font-lock-mode t)
(setq colum-number-mode t)
(setq line-number-mode t)
(transient-mark-mode t)

(require 'sons-of-obsidian)
(require 'color-theme-almost-monokai)
(require 'color-theme)
(color-theme-initialize)
;;(color-theme-almost-monokai)
(color-theme-charcoal-black)

(set-default-font "Monospace-14")
(setenv "PATH" "/usr/bin:/bin")
(setq default-directory "~/works/")

(column-number-mode t)
(menu-bar-mode nil)
(tool-bar-mode nil)
(scroll-bar-mode nil)

(put 'upcase-region 'disabled nil)

;AucTex
(add-to-list 'load-path "~/.emacs.d/site-lisp/site-start.d")
(load "auctex.el" nil t t)
(if (string-equal system-type "windows-nt")
(require 'tex-mik))

(load "preview-latex.el" nil t t)
(setq Tex-auto-save t)
(setq Tex-parse-self t)
(setq-default Tex-master nil)
(linum-mode 1)

(mapc (lambda (mode)
(add-hook 'LaTex-mode-hook mode))
(list 'auto-fill-mode
'LaTex-math-mode
'turn-on-reftex
'linum-mode))

(setq Tex-global-PDF-mode t
Tex-engine 'xetex)

;;org mode
(setq load-path (cons "~/.emacs.d/org-mode/lisp" load-path))
(setq load-path (cons "~/.emacs.d/org-mode/contrib/lisp" load-path))
(add-to-list 'auto-mode-alist '("\\.org'" . org-mode))
(require 'org-install)
;(require 'org-publish)

(put 'scroll-left 'disabled nil)

(require 'cursor-change)
(cursor-change-mode 1)

;;python-mode
(require 'python-mode)
(setq py-load-pymacs-p t)

;;php-mode
(require 'php-mode)

(require 'auto-complete-config)
(ac-config-default)

;;html-helper-mode
(require 'html-helper-mode)

;;emacs-w3m
(require 'w3m-load)
(require 'mime-w3m)

;emms # mplayer
(add-to-list `load-path "/usr/share/emacs/site-lisp/emms")     ;;; emms file-road
(add-to-list `exec-path "/usr/bin/mplayer/")                ;;;mplayer
(require `emms-setup)
(emms-devel)
;; players
(setq emms-player-mpg321-command-name "mpg321"
emms-player-mplayer-command-name "mplayer"
emms-player-list `(emms-player-mplayer
emms-player-mplayer-playlist
emms-player-ogg123
emms-player-mpg321))
;; Show the current track each time EMMS
;; starts to play a track with "play:"
(add-hook `emms-player-started-hook `emms-show)
(setq emms-show-format "play: %s")
;; When asked for emms-play-directory,
;; always start from this directory
(setq emms-source-file-default-directory "/home/sy6765856/Music/")
(setq emms-playlist-buffer-name "music")

;;;emms shortcut
(global-set-key (kbd "C-c e l") `emms-playlist-mode-go)
(global-set-key (kbd "C-c e s") `emms-start)
(global-set-key (kbd "C-c e e") `emms-stop)
(global-set-key (kbd "C-c e n") `emms-next)
(global-set-key (kbd "C-c e p") `emms-pause)
(global-set-key (kbd "C-c e f") `emms-play-playlist)
(global-set-key (kbd "C-c e o") `emms-play-file)
(global-set-key (kbd "C-c e d") `emms-play-directory-tree)
(global-set-key (kbd "C-c e a") `emms-add-directory-tree)
(add-to-list `load-path "/usr/share/emacs/site-lisp")

(require 'douban-music)

;;js2-mode
;;(autoload 'js2-mode "js2-mode" nil t)
;;(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(require 'js2-mode)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mode t)
 '(ecb-options-version "2.40")
 '(mouse-1-click-in-non-selected-windows t)
 '(mouse-drag-copy-region t)
 '(mouse-yank-at-point t)
 '(org-agenda-files (quote ("~/works/df.org")))
 '(save-place t nil (saveplace))
 '(show-paren-mode t)
 '(transient-mark-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(load "jde")
