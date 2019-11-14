;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq org-directory "~/notes/")

;; Notmuch email
(setq sendmail-program "msmtp")
(setq message-sendmail-extra-arguments '("--read-envelope-from"))
(setq message-sendmail-f-is-evil t)
(setq notmuch-archive-tags '("-inbox" "-unread" "-new"))
