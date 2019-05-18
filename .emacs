
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor-type (quote bar))
 '(custom-enabled-themes (quote (klere)))
 '(custom-safe-themes
   (quote
    ("5dc8ea509d300f9b751fce3d94d9885d264c5bda240e90e884d48601955b3f8c" "f94616072300961ce1ff085247fbf31230bfe242686f8514c3f422ff6492c4cf" "5fcc2d6be64f80162cc1b987454748b82464b490cb16b017daa1499d23156904" "1884b12dbfa952664f1119bd6d89aaee77b35fbe3c3539381fbdc84a5bd907ef" "fd967bf5dec4496bef25576c139d9a394eaf914e1de62a996e30a4a8eff0a7af" default)))
 '(package-selected-packages (quote (csv-mode ace-mc)))
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "yamuna")
 '(smtpmail-smtp-service 25))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(set-default 'cursor-type 'bar)
(load-theme 'klere t)
;;(load-theme 'seti t)
(blink-cursor-mode 100)
(global-hl-line-mode +1)

;; autopair package repo
;;Add MELPA repository
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)


;; inhibit startup screen
(setq inhibit-startup-screen t)

;; adding global linum mode to startup i.e. line numbers
(global-linum-mode t)

;; adding ido-mode as default start

(require 'ido)
(ido-mode t)
;; stopping ido mode to serach files in other directory
(setq ido-auto-merge-work-directories-length -1)
