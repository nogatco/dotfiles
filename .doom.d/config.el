;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq org-directory "~/notes/")

;; Notmuch email
(setq sendmail-program "/usr/bin/msmtp")
(setq message-sendmail-extra-arguments '("--read-envelope-from"))
(setq message-sendmail-f-is-evil t)

(setq notmuch-sync-backend 'mbsync)

(after! notmuch
  (setq notmuch-archive-tags '("-inbox" "-unread" "-new"))

  )

(setq +latex-viewers '(zathura))
(setq company-idle-delay 0.1)
