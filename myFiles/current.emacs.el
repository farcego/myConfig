(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

;; maximize at opening
(add-to-list 'default-frame-alist '(fullscreen . maximized))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f"
    "#f6f3e8"])
 '(compilation-message-face 'default)
 '(connection-local-criteria-alist
   '(((:application tramp :protocol "kubernetes")
      tramp-kubernetes-connection-local-default-profile)
     ((:application tramp :protocol "flatpak")
      tramp-container-connection-local-default-flatpak-profile)
     ((:application tramp)
      tramp-connection-local-default-system-profile
      tramp-connection-local-default-shell-profile)))
 '(connection-local-profile-alist
   '((tramp-kubernetes-connection-local-default-profile
      (tramp-config-check . tramp-kubernetes--current-context-data)
      (tramp-extra-expand-args 97
			       (tramp-kubernetes--container
				(car tramp-current-connection))
			       104
			       (tramp-kubernetes--pod
				(car tramp-current-connection))
			       120
			       (tramp-kubernetes--context-namespace
				(car tramp-current-connection))))
     (tramp-container-connection-local-default-flatpak-profile
      (tramp-remote-path "/app/bin" tramp-default-remote-path "/bin"
			 "/usr/bin" "/sbin" "/usr/sbin"
			 "/usr/local/bin" "/usr/local/sbin"
			 "/local/bin" "/local/freeware/bin"
			 "/local/gnu/bin" "/usr/freeware/bin"
			 "/usr/pkg/bin" "/usr/contrib/bin" "/opt/bin"
			 "/opt/sbin" "/opt/local/bin"))
     (tramp-connection-local-darwin-ps-profile
      (tramp-process-attributes-ps-args "-acxww" "-o"
					"pid,uid,user,gid,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
					"-o" "state=abcde" "-o"
					"ppid,pgid,sess,tty,tpgid,minflt,majflt,time,pri,nice,vsz,rss,etime,pcpu,pmem,args")
      (tramp-process-attributes-ps-format (pid . number)
					  (euid . number)
					  (user . string)
					  (egid . number) (comm . 52)
					  (state . 5) (ppid . number)
					  (pgrp . number)
					  (sess . number)
					  (ttname . string)
					  (tpgid . number)
					  (minflt . number)
					  (majflt . number)
					  (time . tramp-ps-time)
					  (pri . number)
					  (nice . number)
					  (vsize . number)
					  (rss . number)
					  (etime . tramp-ps-time)
					  (pcpu . number)
					  (pmem . number) (args)))
     (tramp-connection-local-busybox-ps-profile
      (tramp-process-attributes-ps-args "-o"
					"pid,user,group,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
					"-o" "stat=abcde" "-o"
					"ppid,pgid,tty,time,nice,etime,args")
      (tramp-process-attributes-ps-format (pid . number)
					  (user . string)
					  (group . string) (comm . 52)
					  (state . 5) (ppid . number)
					  (pgrp . number)
					  (ttname . string)
					  (time . tramp-ps-time)
					  (nice . number)
					  (etime . tramp-ps-time)
					  (args)))
     (tramp-connection-local-bsd-ps-profile
      (tramp-process-attributes-ps-args "-acxww" "-o"
					"pid,euid,user,egid,egroup,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
					"-o"
					"state,ppid,pgid,sid,tty,tpgid,minflt,majflt,time,pri,nice,vsz,rss,etimes,pcpu,pmem,args")
      (tramp-process-attributes-ps-format (pid . number)
					  (euid . number)
					  (user . string)
					  (egid . number)
					  (group . string) (comm . 52)
					  (state . string)
					  (ppid . number)
					  (pgrp . number)
					  (sess . number)
					  (ttname . string)
					  (tpgid . number)
					  (minflt . number)
					  (majflt . number)
					  (time . tramp-ps-time)
					  (pri . number)
					  (nice . number)
					  (vsize . number)
					  (rss . number)
					  (etime . number)
					  (pcpu . number)
					  (pmem . number) (args)))
     (tramp-connection-local-default-shell-profile
      (shell-file-name . "/bin/sh") (shell-command-switch . "-c"))
     (tramp-connection-local-default-system-profile
      (path-separator . ":") (null-device . "/dev/null"))))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes '(manoj-dark))
 '(custom-safe-themes
   '("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4"
     "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879"
     "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0"
     default))
 '(ess-swv-processor 'knitr)
 '(fci-rule-color "#073642" t)
 '(global-subword-mode t)
 '(highlight-changes-colors '("#d33682" "#6c71c4"))
 '(highlight-symbol-colors
   (--map (solarized-color-blend it "#002b36" 0.25)
	  '("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900"
	    "#cb4b16" "#268bd2")))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   '(("#073642" . 0) ("#546E00" . 20) ("#00736F" . 30) ("#00629D" . 50)
     ("#7B6000" . 60) ("#8B2C02" . 70) ("#93115C" . 85)
     ("#073642" . 100)))
 '(hl-bg-colors
   '("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D"
     "#00736F" "#546E00"))
 '(hl-fg-colors
   '("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36"
     "#002b36" "#002b36"))
 '(hl-paren-colors '("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900"))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   '("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D"
     "#2aa198" "#d33682" "#6c71c4"))
 '(org-agenda-files nil)
 '(package-selected-packages
   '(## dash debbugs emms ess ess-R-data-view fcitx fill-column-indicator
	magit magithub markdown-mode mu4e-alert multiple-cursors
	org-babel-eval-in-repl org-caldav pdf-tools poly-R
	poly-markdown poly-org polymode quarto-mode solarized-theme
	yasnippet))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(send-mail-function 'mailclient-send-it)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#dc322f") (40 . "#c85d17") (60 . "#be730b") (80 . "#b58900")
     (100 . "#a58e00") (120 . "#9d9100") (140 . "#959300")
     (160 . "#8d9600") (180 . "#859900") (200 . "#669b32")
     (220 . "#579d4c") (240 . "#489e65") (260 . "#399f7e")
     (280 . "#2aa198") (300 . "#2898af") (320 . "#2793ba")
     (340 . "#268fc6") (360 . "#268bd2")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   '(unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00"
		 "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2"
		 "#93115C" "#d33682" "#00736F" "#2aa198" "#839496"
		 "#657b83"))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198"
    "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1"
    "#fdf6e3"]))
(custom-set-faces
 )


;; global keybindings for using magit
(global-set-key (kbd "C-x g") 'magit-status)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                           Generic settings                                           ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; set specific browser to open links                                                   ;;
(setq browse-url-browser-function 'browse-url-firefox)                                  ;;
;;set the buffer name on top                                                            ;;
(setq frame-title-format "%b")                                                          ;;
;; ;; removal of the startup buffer                                                     ;;
(setq inhibit-startup-screen t)                                                         ;;
;; ;; removal of the bell sound when hitting the end of a script                        ;;
(setq visible-bell 1)                                                                   ;;
;;:;; removal of main emacs menu                                                        ;;
(menu-bar-mode -1)                                                                      ;;
;; ;; removal of custom, mode specific menu
(tool-bar-mode -1)
;; ;; displaying the column's numbers in the windows lower bar
(setq column-number-mode t)
;;no scrollling allowed
(setq scroll-bar-mode -1)
;; Keybindings to move between windows
(global-set-key (kbd "C-.") 'other-window)
(global-set-key (kbd "C-,") 'prev-window)
(defun prev-window()
  (interactive)
  (other-window -1))


;; deprecated towards calling some specific folders
;; (dired "~/")
;; open specific folders
(global-set-key (kbd "C-c remRats")
		(lambda()(interactive)
		  (find-file "~/RESEARCH/MSU/projects/NACA/MODELLING/remRats/remRats")))
(global-set-key (kbd "C-c ele")
		(lambda() (interactive)
		  (find-file "~/Dropbox/projects/ele")))
(global-set-key (kbd "C-c slimming")
		(lambda() (interactive)
		  (find-file "~/Dropbox/projects/slimmingDive")))


;; needs to be reinstalled
;; emms, play music within emacs
;; (require 'emms-setup)
;; (emms-all)
;; (emms-default-players)
;; ;; starting directory
;; (setq emms-source-file-default-directory "~Multimedia/")
;; Code below does not workt does not work
;; ;; only name of the track displayed
;; (defvar emms-browser-info-title-format "%a%t")
;; (defvar emms-browser-playlist-info-title-format
;;   emms-browser-info-title-format)

;; also poly-r et al installed with M-x package-install
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

;; (when (>= emacs-major-version 24)
;;   (require 'package)
;;   (add-to-list
;;    'package-archives
;;    ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
;;    '("melpa" . "http://melpa.milkbox.net/packages/")
;;    t))

(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)



;; packages: magit fill-column-indicator
;;(require 'fill-column-indicator)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                                                                       ;;
;;                                   TODO's                                              ;;
;;                                                                                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; secuence of TODO objects and status                                                   ;;
(setq org-todo-keywords                                                                  ;;
      '((sequence "TODO"  "IN-PROGRESS" "PENDING"  "|"  "POSTPONED" "DONE" "CANCELED"    ;;
		  "WAITING ANSWER" )                                                     ;;
	(sequence "CONCEPTUALIZED" "DRAFTED" "INTERNAL-REVIEW" "SUBMITED"                ;;
		  "MAJOR-CHANGES" "MINOR-CHANGES" "|" "ACEPTED" "IN-PRESS" "PUBLLISHED"  ;;
		  "REJECTED")                                                            ;;
	(sequence "MEETING" "|" "CANCELED" "DONE")))                                     ;;
;;                                                                                       ;;
;; the way they are coloured show the current status of the                              ;;
;; progression with the fronground, while using the background color                     ;;
;; to show that this particular task has reach an end point                              ;;
;; backgrounds: RED -> failure at some point ORANGE -> stopped for now                   ;;
;; to be re-evaluated BLUE -> Succesful end                                              ;;
(setq org-todo-keyword-faces                                                             ;;
      '(("TODO" . (:foreground "gold3" :weight bold))                                    ;;
	("IN-PROGRESS" . (:foreground "OrangeRed2" :weight bold))                        ;;
	("PENDING" . (:foreground "yellow" :weight bold))                                ;;
	("CONCEPTUALIZED" . (:foreground "yellow" :weight bold))                         ;;
	("DRAFTED" . (:foreground "OrangeRed2":background "white" :weight bold))         ;;
	("INTERNAL-REVIEW" . (:foreground "magenta2" :background "aquamarine1"))         ;;
	("SUBMITED" . (:foreground "magenta2" :background "aquamarine1"))                ;;
	("MAJOR-CHANGES" . (:foreground "magenta2" :background "aquamarine1"))           ;;
	("MINOR-CHANGES" . (:foreground "magenta2" :background "aquamarine1"))           ;;
	("MEETING" . (:foreground "magenta2" :background "aquamarine1"))                 ;;
	;; NOW IT IS TIME FOR THINGS DONE                                                ;;
	("POSTPONED" . (:foreground "magenta2"))                                         ;;
	("DONE" . (:foreground "blue" :background "white" :weight bold))                 ;;
	("CANCELED" . (:foreground "white" :background "#4d4d4d"))                       ;;
	("WAITING ANSWER" . (:foreground "DodgerBlue3" :background "white" :weight bold));;
	("ACEPTED" . (:foreground "DodgerBlue3" :background "white" :weight bold))       ;;
	("IN-PRESS" . (:foreground "DodgerBlue3" :background "white" :weight bold))      ;;
	("PUBLISHED" . (:foreground "DodgerBlue3" :background "white" :weight bold))     ;;
	("REJECTED" . (:foreground "black" :background "red3" :weight bold))             ;;
	))                                                                               ;;
;;                                                                                       ;;
(setq org-higest-priority ?A)                                                            ;;
(setq org-lowest-priority ?C)                                                            ;;
(setq org-default-priority ?B)                                                           ;;
(setq org-priority-faces '((?A . (:foreground "FireBrick" :weight bold))                 ;;
			   (?B . (:foreground "lightSteelBlue" :weight bold))            ;;
			   (?C . (:foreground "OliveDrab" :weight bold))))               ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                        AGENDA                                         ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                                                                       ;;
;; agenda files                                                                          ;;
(setq org-agenda-files '("~/agenda/personal.org"))                                       ;;
;;                                                                                       ;;
;; weeks starts at day 1                                                                 ;;
(setq calendar-week-start-day 1)                                                         ;;
;;                                                                                       ;;
(setq calendar-day-header-array ["Su" "Mo" "Tu" "We" "Th" "Fr" "Sa"])                    ;;
(setq calendar-day-name-array ["Sunday" "Monday" "Tuesday" "Wednesday" "Thursday"        ;;
			       "Friday" "Saturday"])                                     ;;
(setq calendar-month-abbrev-array ["Jan" "Feb" "Mar" "Apr" "May" "Jun" "Jul" "Aug" "Sep" ;;
				   "Oct" "Nov" "Dic"])                                   ;;
(setq calendar-month-name-array ["January" "February" "March" "April" "May" "June" "July";;
				 "August" "September" "October" "November" "December"])  ;;
;;                                                                                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(require 'use-package)

;; ;; PDF tools

;; (use-package pdf-tools
;;  :pin manual ;; manually update
;;  :config
;;  ;; initialise
;;  (pdf-tools-install)
;;  ;; open pdfs scaled to fit page
;; ;; (setq-default pdf-view-display-size 'fit-page)
;;  ;; automatically annotate highlights
;;  (setq pdf-annot-activate-created-annotations t))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                          org-mode agenda options                                      ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;open agenda in current window                                                          ;;
(setq org-agenda-window-setup (quote current-window))                                    ;;
;;warn me of any deadlines in next 7 days                                                ;;
(setq org-deadline-warning-days 7)                                                       ;;
;;show me tasks scheduled or due in next fortnight                                       ;;
(setq org-agenda-span (quote fortnight))                                                 ;; 
;;don't show tasks as scheduled if they are already shown as a deadline                  ;;
(setq org-agenda-skip-scheduled-if-deadline-is-shown t)                                  ;;
;;sort tasks in order of when they are due and then by priority                          ;;
(setq org-agenda-sorting-strategy                                                        ;;
  (quote                                                                                 ;;
   ((agenda deadline-up priority-down)                                                   ;;
    (todo priority-down category-keep)                                                   ;;
    (tags priority-down category-keep)                                                   ;;
    (search category-keep))))                                                            ;;
;; set a time stamp when closing TODOs                                                   ;;
(setq org-log-done 'time)                                                                ;;
;; insert current time                                                                   ;;
(global-set-key (kbd "C-c C-c"                                                           ;;
		     (lambda () (interactive) (org-insert-time-stamp (current-time))))   ;;
;;                                                                                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; A-x package-install multiple-cursors                                                  ;;
;; multiple cursors                                                                      ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-c m c") 'mc/edit-lines)                                          ;;
;;                                                                                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; mu4e

(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu/mu4e")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                               dired-x                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                                                                       ;;
(put 'downcase-region 'disabled nil)                                                     ;;
;;                                                                                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                R stuff                                                ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                                                                       ;;
;; turn off flymake by default                                                           ;;
(setq ess-use-flymake nil)                                                               ;;
;;                                                                                       ;;
;; load the library                                                                      ;;
(require 'quarto-mode)                                                                   ;;
;;                                                                                       ;;
;; use of quarto mode in Rmd files                                                       ;;
(use-package quarto-mode                                                                 ;;
  :mode (("\\.Rmd" . poly-quarto-mode))                                                  ;;
  )                                                                                      ;;
;;                                                                                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




