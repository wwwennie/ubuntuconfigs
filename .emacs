;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; USER OPTIONS           ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Turn off start up
(setq inhibit-startup-message t)
;; Hide the menu
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
;; Keep history
(savehist-mode 1)

;; MELPA package library
(require 'package)
(add-to-list 'package-archives
                          '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

;;; wwwennie added for org-ref
(when (< emacs-major-version 24)
  ;; For compatibility
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; Set the function key as Meta
;;(setq mac-function-modifier 'meta)
;;(define-key my-keys-minor-mode-map (kbd "M-,") 'execute-extended-command)
;;(if (eq system-type 'darwin)
;;  (progn
;;    (setq mac-option-modifier 'meta)))

;; Makes *scratch* empty.
(setq initial-scratch-message "")

;; No more typing the whole yes or no. Just y or n will do.
(fset 'yes-or-no-p 'y-or-n-p)

;; configuration for EVIL package
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)


;; set up JK as ESC for EVIL package
(require 'key-chord)
(key-chord-mode 1)
(key-chord-define evil-insert-state-map  "jk" 'evil-normal-state)

;; change the theme
(load-theme 'misterioso)

;; use C-x C-r for recent files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; specify the gnuplot executable (if other than /usr/bin/gnuplot)
;; ONLY FOR MACKBOOK
;;(setq gnuplot-program "/usr/local/bin/gnuplot")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ORG OPTIONS            ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;; fold src blocks in org mode
(add-hook 'org-mode-hook 'org-hide-block-all)

;; active Babel languages
(org-babel-do-load-languages
  'org-babel-load-languages
  '((gnuplot . t)
    (calc . t)
    (emacs-lisp . nil)
    (ditaa . t)
    ))
;; Location of DITAA package
(setq org-ditaa-jar-path "/usr/local/Cellar/ditaa/0.9/libexec/ditaa0_9.jar")

;; artist mode menu
;; FOR MAC ONLY
;;(eval-after-load "artist"
;;                 '(define-key artist-mode-map [(down-s-mouse-3)] 'artist-mouse-choose-operation)
;;                 )

;; to make @red@ display in red, use
(add-to-list 'org-emphasis-alist
             '("@" (:foreground "red")
               ))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; USER DEFINED MACROS    ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(markdown-command "/usr/bin/pandoc -s --mathml")
 '(org-agenda-files nil)
 '(package-selected-packages
   (quote
    (## markdown-mode gnuplot-mode gnuplot yasnippet snippet key-chord evil-org))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ORG LATEX OPTIONS      ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; beamer package
;; #+LaTeX_CLASS: beamer in org files
(unless (boundp 'org-export-latex-classes)
  (setq org-export-latex-classes nil))
(add-to-list 'org-export-latex-classes
             ;; beamer class, for presentations
             '("beamer"
               "\\documentclass[11pt]{beamer}\n
               \\mode<{{{beamermode}}}>\n
               \\usetheme{{{{beamertheme}}}}\n
               \\usecolortheme{{{{beamercolortheme}}}}\n
               \\beamertemplateballitem\n
               \\setbeameroption{show notes}
               \\usepackage[utf8]{inputenc}\n
               \\usepackage[T1]{fontenc}\n
               \\usepackage{hyperref}\n
               \\usepackage{color}
               \\usepackage{listings}
               \\usepackage{braket}
               \\lstset{numbers=none,language=[ISO]C++,tabsize=4,
               frame=single,
               basicstyle=\\small,
               showspaces=false,showstringspaces=false,
               showtabs=false,
               keywordstyle=\\color{blue}\\bfseries,
               commentstyle=\\color{red},
               }\n
               \\usepackage{verbatim}\n
               \\institute{{{{beamerinstitute}}}}\n          
               \\subject{{{{beamersubject}}}}\n"

               ("\\section{%s}" . "\\section*{%s}")

               ("\\begin{frame}[fragile]\\frametitle{%s}"
                "\\end{frame}"
                "\\begin{frame}[fragile]\\frametitle{%s}"
                "\\end{frame}")))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; AUCLATEX OPTIONS      ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; AucTeX
(add-hook 'LaTeX-mode-hook
          (lambda ()
            (require 'beamer)
            (require 'reftex)
))


(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
(setq TeX-PDF-mode t)

;;; AUCTeX
;; Customary Customization, p. 1 and 16 in the manual, and http://www.emacswiki.org/emacs/AUCTeX#toc2
(setq TeX-parse-self t); Enable parse on load.
(setq TeX-auto-save t); Enable parse on save.
(setq-default TeX-master nil)

(setq TeX-PDF-mode t); PDF mode (rather than DVI-mode)

(add-hook 'TeX-mode-hook 'flyspell-mode); Enable Flyspell mode for TeX modes such as AUCTeX. Highlights all misspelled words.
(add-hook 'emacs-lisp-mode-hook 'flyspell-prog-mode); Enable Flyspell program mode for emacs lisp mode, which highlights all misspelled words in comments and strings.
(setq ispell-dictionary "english"); Default dictionary. To change do M-x ispell-change-dictionary RET.
(add-hook 'TeX-mode-hook
                    (lambda () (TeX-fold-mode 1))); Automatically activate TeX-fold-mode.
(setq LaTeX-babel-hyphen nil); Disable language-specific hyphen insertion.

;; " expands into csquotes macros (for this to work babel must be loaded after csquotes).
(setq LaTeX-csquotes-close-quote "}"
            LaTeX-csquotes-open-quote "\\enquote{")

;;; AUCTeX
;; Customary Customization, p. 1 and 16 in the manual, and http://www.emacswiki.org/emacs/AUCTeX#toc2
(setq TeX-parse-self t); Enable parse on load.
(setq TeX-auto-save t); Enable parse on save.
(setq-default TeX-master nil)

(setq TeX-PDF-mode t); PDF mode (rather than DVI-mode)

(add-hook 'TeX-mode-hook 'flyspell-mode); Enable Flyspell mode for TeX modes such as AUCTeX. Highlights all misspelled words.
(add-hook 'emacs-lisp-mode-hook 'flyspell-prog-mode); Enable Flyspell program mode for emacs lisp mode, which highlights all misspelled words in comments and strings.
(setq ispell-dictionary "english"); Default dictionary. To change do M-x ispell-change-dictionary RET.
(add-hook 'TeX-mode-hook
                    (lambda () 
                      (TeX-fold-mode 1)
                      (local-set-key "\C-c\ [" 'reftex-citation)
                      )); Automatically activate TeX-fold-mode.
(setq LaTeX-babel-hyphen nil); Disable language-specific hyphen insertion.

;; " expands into csquotes macros (for this to work babel must be loaded after csquotes).
(setq LaTeX-csquotes-close-quote "}"
            LaTeX-csquotes-open-quote "\\enquote{")

;; LaTeX-math-mode http://www.gnu.org/s/auctex/manual/auctex/Mathematics.html
(add-hook 'TeX-mode-hook 'LaTeX-math-mode)

;;; RefTeX
;; Turn on RefTeX for AUCTeX http://www.gnu.org/s/auctex/manual/reftex/reftex_5.html
(add-hook 'TeX-mode-hook 'turn-on-reftex)

;;; Markdown
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.mdown$" . markdown-mode))
(add-hook 'markdown-mode-hook (lambda () (visual-line-mode t)))
(setq markdown-command "pandoc --smart -f markdown -t html")
;;(setq markdown-css-path (expand-file-name "markdown.css" abedra/vendor-dir))

;; ==========================================================
;; ==========================================================

;; added by wwwennie
;; Interleave
;; https://github.com/rudolfochrist/interleave
(add-to-list 'load-path "~/.emacs.d/lisp")  ; Add this directory to Emacs' load path
;;(load "interleave")

;;;  copy and pasting from/to outside emacs
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;; line numbers
(linum-mode)
(add-hook 'prog-mode-hook 'linum-mode)
(add-hook 'org-mode-hook 'linum-mode)

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

