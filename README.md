# gitbook-builder

gitbook-builder is a simple package that builds GitBook without leaving the current screen.

## Requirements

This package requires **Node.js** and **GitBook**.

- Debian/Ubuntu

  ```
  $ sudo apt install npm
  $ sudo npm install gitbook-cli -g
  ```

- Mac

  ```
  $ npm install gitbook-cli -g
  $ source ~/.bashrc 
  ```

For details, see [Setup and Installation of GitBook](https://toolchain.gitbook.com/setup.html).

## Install

```emacs-lisp
;; auto-install
(auto-install-from-url "https://raw.github.com/jamcha-aa/auto-org-md/master/gitbook-builder.el")
```

## .emacs.d/init.el

```emacs-lisp
(require 'gitbook-builder)
```

# Usage

  - **M-x gitbook-builder** outputs htmls to **_book**.
  - **M-x gitbook-github** outputs htmls to **docs**. This function is useful when you publish your documents on GitHub Pages.

# License
 This program is licensed under GPL 3.
