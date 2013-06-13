(eval-when-compile
  (require 'color-theme))

(defun sons-of-obsidian ()
  "Famous Visual Studio Color Theme Sons of Obsidian by Troydm 2011-05"
  (interactive)
  (color-theme-install
   '(sons-of-obsidian
      ((background-color . "#333")
      (background-mode . dark)
      (border-color . "#1a1a1a")
      (cursor-color . "white")
      (foreground-color . "#eeeeec")
      (mouse-color . "white"))
     (default ((t (:background "#333" :foreground "#ddd"))))
     (fringe ((t (:background "#1a1a1a"))))
     (mode-line ((t (:foreground "#eeeeec" :background "#555753"))))
     (region ((t (:background "#575757"))))
     (font-lock-builtin-face ((t (:foreground "#afc8e4"))))
     (font-lock-constant-face ((t (:foreground "#eeeeec"))))
     (font-lock-comment-face ((t (:foreground "#888a85"))))
     (font-lock-doc-string-face ((t (:foreground "#9b859d"))))
     (font-lock-function-name-face ((t (:foreground "#ffffff"))))
     (font-lock-keyword-face ((t (:foreground "#7ab847"))))
     (font-lock-string-face ((t (:foreground "#e08d00"))))
     (font-lock-type-face ((t (:foreground"#729aca"))))
     (font-lock-reference-face ((t (:foreground "8b98ab"))))
     (font-lock-variable-name-face ((t (:foreground "#eeeeec"))))
     (show-paren-match ((t (:background "#555753"))))
     (minibuffer-prompt ((t (:foreground "#a5c8ee" :bold t))))
     (font-lock-warning-face ((t (:foreground "Red" :bold t))))
     )))

(add-to-list 'color-themes
             `(color-theme-sons-of-obsidian
               "Sons of Obsidian",
	       "Dmitry Geurkov <dmitry_627@mail.ru>"))
(provide 'sons-of-obsidian)