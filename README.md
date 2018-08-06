# gitbook-builder

gitbook-builder is a simple package that exports GitBook without shell. If you are annoying repetitive shell executions, try this.

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

  - **M-x gitbook-builder** outputs htmls into **_book**.
  - **M-x gitbook-github** outputs htmls into **docs**. This function is useful when you publish your documents on GitHub Pages.
  - **M-x gitbook-commit** executes "git commit -am 'Build GitBook'".

# License
 This program is licensed under GPL 3.
