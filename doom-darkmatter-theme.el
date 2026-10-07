;;; doom-darkmatter-theme.el --- Darkmatter for Doom Emacs -*- lexical-binding: t; no-byte-compile: t; -*-

;; Author: Steve Simkins
;; URL: https://github.com/darkmattertheme/emacs
;; Version: 0.1.0
;; Package-Requires: ((emacs "25.1") (doom-themes "2.2.1"))
;; Keywords: faces themes
;; SPDX-License-Identifier: MIT

;;; Commentary:

;; Darkmatter (https://darkmattertheme.com) for doom-themes. A near-black
;; palette with an ember accent, adapted from base16 Black Metal Bathory.
;;
;; Every color below is taken from the Darkmatter palette. Doom wants a nine
;; step gray ramp (base0-base8), so some palette grays fill more than one step.

;;; Code:

(require 'doom-themes)

(defgroup doom-darkmatter-theme nil
  "Options for the `doom-darkmatter' theme."
  :group 'doom-themes)

(defcustom doom-darkmatter-brighter-modeline nil
  "If non-nil, the mode-line uses Shadow instead of Umbra."
  :group 'doom-darkmatter-theme
  :type 'boolean)

(def-doom-theme doom-darkmatter
  "Darkmatter (https://darkmattertheme.com), adapted from Black Metal Bathory."

  ;; name        gui       256       16
  ((bg         '("#121113" "black"   "black"        )) ; Void
   (bg-alt     '("#121212" "#1c1c1c" "black"        )) ; Umbra
   (base0      '("#121113" "black"   "black"        )) ; Void
   (base1      '("#121212" "#1c1c1c" "brightblack"  )) ; Umbra
   (base2      '("#222222" "#262626" "brightblack"  )) ; Shadow
   (base3      '("#222222" "#262626" "brightblack"  )) ; Shadow
   (base4      '("#333333" "#303030" "brightblack"  )) ; Dust
   (base5      '("#444444" "#444444" "brightblack"  )) ; Eclipse
   (base6      '("#888888" "#878787" "brightblack"  )) ; Nebula
   (base7      '("#999999" "#9e9e9e" "white"        )) ; Ash
   (base8      '("#c1c1c1" "#bcbcbc" "white"        )) ; Starlight
   (fg         '("#c1c1c1" "#bcbcbc" "white"        )) ; Starlight
   (fg-alt     '("#999999" "#9e9e9e" "brightwhite"  )) ; Ash

   (grey       base4)
   (red        '("#5f8787" "#5f8787" "red"          )) ; Aurora
   (orange     '("#e78a53" "#d7875f" "brightred"    )) ; Ember
   (green      '("#fbcb97" "#ffd7af" "green"        )) ; Solar
   (teal       '("#5f8787" "#5f8787" "brightgreen"  )) ; Aurora
   (yellow     '("#e78a53" "#d7875f" "yellow"       )) ; Ember
   (blue       '("#888888" "#878787" "brightblue"   )) ; Nebula
   (dark-blue  '("#888888" "#878787" "blue"         )) ; Nebula
   (magenta    '("#999999" "#9e9e9e" "brightmagenta")) ; Pulsar
   (violet     '("#aaaaaa" "#a8a8a8" "magenta"      )) ; Meteor
   (cyan       '("#aaaaaa" "#a8a8a8" "brightcyan"   )) ; Corona
   (dark-cyan  '("#5f8787" "#5f8787" "cyan"         )) ; Aurora

   ;; face categories -- required for all themes
   (highlight      orange)
   (vertical-bar   base4)
   (selection      base3)
   (builtin        cyan)
   (comments       base4)
   (doc-comments   base5)
   (constants      violet)
   (functions      blue)
   (keywords       magenta)
   (methods        blue)
   (operators      fg-alt)
   (type           orange)
   (strings        green)
   (variables      teal)
   (numbers        violet)
   (region         base3)
   (error          red)
   (warning        orange)
   (success        green)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)

   ;; custom categories
   (modeline-fg          fg)
   (modeline-fg-alt      base7)
   (modeline-bg          (if doom-darkmatter-brighter-modeline base2 bg-alt))
   (modeline-bg-inactive bg))

  ;;;; Base theme face overrides
  ((cursor :background orange)
   ((line-number &override) :foreground base4)
   ((line-number-current-line &override) :foreground orange)
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box `(:line-width 1 :color ,base4))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box `(:line-width 1 :color ,base3))
   (mode-line-emphasis :foreground orange)
   (isearch :background orange :foreground bg :weight 'bold)
   (lazy-highlight :background base4 :foreground orange)
   (show-paren-match :background base4 :foreground orange :weight 'bold)
   (minibuffer-prompt :foreground orange)

   ;;;; doom-modeline
   (doom-modeline-bar :background orange)
   (doom-modeline-buffer-file :foreground fg :weight 'bold)
   (doom-modeline-buffer-modified :foreground orange :weight 'bold)

   ;;;; font-lock
   (font-lock-comment-face :foreground comments :slant 'italic)

   ;;;; org
   ((org-block &override) :background bg-alt)
   ((org-block-begin-line &override) :background bg-alt :foreground base5)
   (org-level-1 :foreground orange :weight 'bold)
   (org-level-2 :foreground blue :weight 'bold)
   (org-level-3 :foreground violet)
   (org-level-4 :foreground teal)

   ;;;; solaire-mode
   (solaire-default-face :background bg-alt)
   (solaire-mode-line-face :background modeline-bg :foreground modeline-fg)
   (solaire-mode-line-inactive-face
    :background modeline-bg-inactive :foreground modeline-fg-alt))

  ;;;; Base theme variable overrides
  ())

;;; doom-darkmatter-theme.el ends here
