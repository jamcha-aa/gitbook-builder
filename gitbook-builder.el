;;; gitbook-builder.el --- exports GitBook without shell

;; Copyright (C) 2018 jamcha

;; Author: jamcha <jamcha.aa@gmail.com>
;; Created: 2018-07-26
;; Last Update: 2018-08-07
;; Version: 1.2
;; Package-Requires: ((emacs "24"))
;; Keywords: markdown, gitbook
;; URL: https://github.com/jamcha-aa/gitbook-builder

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; gitbook-builder.el exports GitBook without shell executions.

;;; Code:

(defun gitbook-required-check ()
  (cond
   ((locate-file "SUMMARY.md" '("."))
    (message "'README.md' not found."))
   ((locate-file "README.md" '("."))
    (message "'SUMMARY.md' not found."))
   (t
    (message "'README.md' 'SUMMARY.md' not found."))))

(defun gitbook-builder ()
  (interactive)
  (cond
   ((and (locate-file "README.md" '(".")) (locate-file "SUMMARY.md" '("."))
         (async-shell-command (format "gitbook install && gitbook build"))))
   ((progn
      (gitbook-required-check)))))

(defun gitbook-github ()
  (interactive)
  (cond
   ((and (locate-file "README.md" '(".")) (locate-file "SUMMARY.md" '("."))
         (let ((x (file-name-directory (buffer-file-name))) (y "docs"))
           (async-shell-command (format "gitbook install && gitbook build %s ../%s" x y)))))
   ((progn
      (gitbook-required-check)))))

(provide 'gitbook-builder)

;;; gitbook-builder.el ends here
