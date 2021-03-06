;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;(package! some-package)

;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/raxod502/straight.el#the-recipe-format
;(package! another-package
;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;(package! this-package
;  :recipe (:host github :repo "username/repo"
;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;(package! builtin-package :recipe (:nonrecursive t))
;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see raxod502/straight.el#279)
;(package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
;(package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;(unpin! pinned-package)
;; ...or multiple packages
;(unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;(unpin! t)

;; org
(package! org-super-agenda :pin "dd0d104c26...")
(package! helm-org-rifle)
(package! org-download)
(package! org-pretty-table-mode
  :recipe (:host github :repo "Fuco1/org-pretty-table") :pin "88380f865a...")
(package! org-fragtog :pin "8eca8084cc...")
(package! org-pretty-tags :pin "40fd72f3e7...")
(package! org-pomodoro)
(package! org-superstar)

;; org roam, and bibtex management
;; When using org-roam via the `+roam` flag
(unpin! org-roam company-org-roam)
(package! org-ref)
(package! ivy-bibtex)
(package! org-roam-bibtex
  :recipe (:host github :repo "org-roam/org-roam-bibtex"))
(package! org-similarity
  :recipe (:host github :repo "soldeace/org-similarity"))

;; spaced repetition
(package! anki-editor)

;; writing experience
(package! olivetti)
(package! darkroom)
(package! writeroom-mode)
(package! poet-theme)
(package! zoom)
(package! visual-fill-column)
(package! centered-window)

;; words words
(package! captain) ;; auto capitalize words
(package! helm-flyspell)
(package! define-word)
(package! company-statistics)
(package! company-wordfreq)
(package! flyspell-lazy :pin "3ebf68cc9e...")
(package! doct
  :recipe (:host github :repo "progfolio/doct")
  :pin "1bcec209e1...")

;; general utils
(package! wgrep)
(package! helm-ag)
(package! multiple-cursors)
(package! counsel)
(package! general)
(package! emms)
(package! ov)
(package! s)
(package! promise)

;; code related
(package! matlab-mode)
(package! virtualenvwrapper)

;; (package! org-reveal)
