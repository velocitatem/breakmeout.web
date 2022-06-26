
;;; build-site.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2022 Daniel Rosel
;;
;; Author: Daniel Rosel <daniel@alves.world>
;; Maintainer: Daniel Rosel <daniel@alves.world>
;; Created: June 01, 2022
;; Modified: June 01, 2022
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/velo/build-site
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:

(require 'ox-publish)


(setq org-html-validation-link nil
      org-html-head-include-scripts t)
;; Define the publishing project
(setq org-publish-project-alist
      (list
       (list "my-org-site"
             :recursive t
             :base-directory "./content"
             :publishing-directory "./public"
             :publishing-function 'org-html-publish-to-html
             :with-author nil           ;; Don't include author name
             :with-creator nil            ;; Include Emacs and Org versions in footer
             :with-toc nil                ;; Include a table of contents
             :section-numbers nil       ;; Don't include section numbers
             :time-stamp-file nil)))
;; Generate the site output
(org-publish-all t)

(message "Build Complete")


(provide 'build-site)
;;; build-site.el ends here
