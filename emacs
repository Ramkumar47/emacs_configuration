
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
    ("e62fde0c33471bdc4e9573a67fc60423f14ca535b97571b9f9885ffed0cb1ddb" "e0311e8e79881f9a2cd58adf3efdc13fbc6b222e41942d622d3e7ec2dbb91fd2" "2e8b6ca9f6979cbba8f14f2d1fd617444ecab05b9b713d72d1f6a8cfbd9ccd83" "56cf80a345f1c4b1157d5d9dda540c0790e723a7db2c75d86e62b7048af060d8" "ebbd4bbb0f017cb09f7a3b1363b83dfde0c5f4970cda2705419457366cd2de91" "ac4f96eb64fbeb839341c2afe96414c9cbc9e5bdaacb814b919d0a93e2a87f10" "ba913d12adb68e9dadf1f43e6afa8e46c4822bb96a289d5bf1204344064f041e" "01106b3f65273106fc4a6e155535049c658a608019257b60afef5e5c75a25c7b" "7feeed063855b06836e0262f77f5c6d3f415159a98a9676d549bfeb6c49637c4" "77bd459212c0176bdf63c1904c4ba20fce015f730f0343776a1a14432de80990" "2aa073a18b2ba860d24d2cd857bcce34d7107b6967099be646d9c95f53ef3643" "1ba61848d0d8c78e037867c26f118875705c20f5ad64949a8cee8c8059e5c50f" "1c082c9b84449e54af757bcae23617d11f563fc9f33a832a8a2813c4d7dfb652" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "cc0dbb53a10215b696d391a90de635ba1699072745bf653b53774706999208e3" "3e335d794ed3030fefd0dbd7ff2d3555e29481fe4bbb0106ea11c660d6001767" "1177fe4645eb8db34ee151ce45518e47cc4595c3e72c55dc07df03ab353ad132" "0e661090440d8281ccbf9416f1ec2a20e66a1bd9097c10b4e607e19c3e61f0a9" "4c8372c68b3eab14516b6ab8233de2f9e0ecac01aaa859e547f902d27310c0c3" "5dc8ea509d300f9b751fce3d94d9885d264c5bda240e90e884d48601955b3f8c" "f94616072300961ce1ff085247fbf31230bfe242686f8514c3f422ff6492c4cf" "5fcc2d6be64f80162cc1b987454748b82464b490cb16b017daa1499d23156904" "1884b12dbfa952664f1119bd6d89aaee77b35fbe3c3539381fbdc84a5bd907ef" "fd967bf5dec4496bef25576c139d9a394eaf914e1de62a996e30a4a8eff0a7af" default)))
 '(fci-rule-color "#444444")
 '(fringe-mode 6 nil (fringe))
 '(linum-format (quote dynamic))
 '(package-selected-packages
   (quote
    (markdown-preview-eww markdown-mode+ multiple-cursors flymd markdown-preview-mode markdown-mode csv-mode ace-mc)))
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
;; (load-theme 'klere t)
(load-theme 'seti-modified t)
;;(load-theme 'seti t)
(blink-cursor-mode 100)
(global-hl-line-mode +1)

;; autopair package repo
;;Add MELPA repository
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

;; melpa stable package
;; (require 'package)
;; (add-to-list 'package-archives
;;              '("melpa-stable" . "https://stable.melpa.org/packages/"))
;; (package-initialize)


;; inhibit startup screen
(setq inhibit-startup-screen t)

;; adding global linum mode to startup i.e. line numbers
(global-linum-mode t)

;; adding ido-mode as default start

(require 'ido)
(ido-mode t)
;; stopping ido mode to serach files in other directory
(setq ido-auto-merge-work-directories-length -1)

;; adding column number mode to startup
(column-number-mode t)

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;; removing scroll bar
(scroll-bar-mode -1)

;; removing menubar and tool bar
(menu-bar-mode -1)
(tool-bar-mode -1)

;; enabling multiple-cursor mode
(require 'multiple-cursors)
;; (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C-c m c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; remove trailing whitespaces while saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; make backup Tilde files to occur in separate directory
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
 )

;; function definition for creating new empty buffer with its own keybinding
(defun xah-new-empty-buffer ()
  (interactive)
  (let (($buf (generate-new-buffer "untitled")))
    (switch-to-buffer $buf)
    (funcall initial-major-mode)
    (setq buffer-offer-save t)
    (setq initial-major-mode (quote text-mode))
    $buf
    ))

(global-set-key (kbd "<f7>") 'xah-new-empty-buffer)
