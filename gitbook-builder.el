;;; gitbook-builder.el --- build GitBook in background

;; Copyright (C) 2018 jamcha

;; Author: jamcha <jamcha.aa@gmail.com>
;; Created: 2018-07-26
;; Version: 1.0
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

;; gitbook-builder.el builds GitBook without leaving current screen.

;;; Code:
(defun gitbook-builder ()
  (interactive)
  (async-shell-command (format "gitbook build")))

(provide 'gitbook-builder)

(defun gitbook-github ()
  (interactive)
  (let ((x (file-name-directory (buffer-file-name))) (y "docs"))
  (async-shell-command (format "gitbook build %s ../%s" x y))))

(provide 'gitbook-github)

;;; gitbook-builder.el ends here
