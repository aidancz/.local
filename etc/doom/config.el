;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;;; user info
(setq user-full-name "Aidan Zhai"
      user-mail-address "aidanczhai@gmail.com"
      )



;;; path
(setq default-directory "/home/ai"
      org-directory "/home/ai/a/fj"
      )



;;; appearance
(setq doom-theme 'doom-solarized-dark
      display-line-numbers-type 'relative
      )

(setq-default tab-width 8                       ; http://xahlee.info/emacs/emacs/emacs_tabs_space_indentation_setup.html
              )
;; http://xahlee.info/emacs/emacs/emacs_tabs_space_indentation_setup.html

(setq whitespace-style '(face trailing tabs tab-mark))
(global-whitespace-mode t)
;; http://xahlee.info/emacs/emacs/whitespace-mode.html



(setq doom-font (font-spec :family "monospace" :size 15.0)
      doom-unicode-font (font-spec :family "Twemoji")
      use-default-font-for-symbols nil
      )
(defun my-cjk-font()
  (dolist (charset '(han kana hangul cjk-misc))
    (set-fontset-font t charset (font-spec :family "Sarasa Mono SC"))))
;; (setq face-font-rescale-alist '(("Sarasa Mono SC" . 1.1)))
(add-hook 'after-setting-font-hook #'my-cjk-font)
;; emoji: 😄, 🤦, 🏴󠁧󠁢󠁳󠁣󠁴󠁿
;; east asia: 你好中言, こんにちは, 안녕하세요
;; https://github.com/VitalyAnkh/config/blob/master/doom/config.org#visual-settings
;; https://emacs.stackexchange.com/questions/62049/override-the-default-font-for-emoji-characters



;;; vanilla
(setq-default delete-by-moving-to-trash t       ; the trash dir is specified by "trash-directory", default: $XDG_DATA_HOME/Trash
              )



;;; evil
(setq evil-move-cursor-back nil
      evil-move-beyond-eol t
      evil-start-of-line t
      evil-normal-state-cursor '(box "#93a1a1")
      evil-insert-state-cursor '(box "#859900")
      evil-operator-state-cursor '(box "#b58900")
      evil-replace-state-cursor '(box "#6c71c4")
      evil-visual-state-cursor '(box "#268bd2")
      evil-motion-state-cursor '(box "#dc322f")
      )












;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;;(setq user-full-name "John Doe"
;;      user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;;(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
;;(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
;;(setq org-directory "~/org/")

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
