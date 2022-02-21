;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; KEYBINDINGS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;
;; EDITOR
(map! :ne "M-/" #'comment-or-uncomment-region)
(map! :ne "C-ç" #'avy-goto-char)
(map! :ne "C-l" #'avy-goto-char-2)
(map! :ne "M-g f" #'avy-goto-line)
(map! :ne "M-g w" #'avy-goto-word-1)
(map! :ne "M-g e" #'avy-goto-word-0)
(map! :ne "M-m l" #'avy-move-line)
(map! :ne "M-m r" #'avy-move-region)

;;
;; HIDE/SHOW
(map! :ne "TAB" #'hs-toggle-hiding)
(map! :leader
      "za" #'hs-toggle-hiding
      "zsa" #'hs-show-all
      "zsb" #'hs-show-block
      "zhl" #'hs-hide-level
      "zhb" #'hs-hide-block)

;;
;; MARKDOWN MODE
(map! :after markdown-mode
      :map markdown-mode-map
      :leader
      "mk" #'outline-previous-heading
      "mj" #'outline-next-heading
      "mh" #'markdown-hide-body)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GENERAL
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;
;; FONTS
(setq doom-font (font-spec :family "Fira Code" :size 11))

;;
;; EDITOR
(setq display-line-numbers-type 'relative)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;;
;; MARKDOWN FILES
(add-hook! 'markdown-mode-hook
  (visual-line-mode 1)
  (turn-off-auto-fill)
  (markdown-hide-body))

;;
;; SET THE THEME
(setq doom-theme 'doom-dracula)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PLUGINS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;
;; PRETTY-MODE
(global-pretty-mode t)

;;
;; TREEMACS
(after! treemacs
  (add-to-list 'treemacs-pre-file-insert-predicates #'treemacs-is-file-git-ignored?))

;;
;; Emacs server
(server-start)

;;
;; COMPANY
(setq company-idle-delay 0)
(setq company-show-numbers t)

;;
;; FIX ICONS
(setq doom-themes-treemacs-theme "doom-colors")
