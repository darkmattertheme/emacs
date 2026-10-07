<h3 align="center">
	<img src="assets/logo.svg" width="100" alt="Logo"/><br/>
	<img src="assets/transparent.svg" height="30" width="0px"/>
	Darkmatter for Emacs
	<img src="assets/transparent.svg" height="30" width="0px"/>
</h3>

<p align="center">
	<img src="assets/emacs-demo.jpg" alt="Darkmatter for Emacs"/>
</p>

An [Emacs](https://www.gnu.org/software/emacs/) theme in the
[Darkmatter](https://darkmattertheme.com) palette, as a standalone `deftheme`
and as a [Doom Emacs](https://github.com/doomemacs/doomemacs) theme.

The standalone theme needs Emacs 24.1 or newer and covers the editor, font
lock (including the Emacs 29 tree-sitter faces), the mode line and tab bar,
outline, Org and the agenda, Markdown, CSS, web-mode, compilation, xref,
Ediff, Magit, Transient, git-commit, diff-hl, git-gutter, Flymake, Flycheck,
Eglot, lsp-mode, lsp-ui, Vertico, Orderless, Marginalia, Consult, Ivy, Avy,
Company, Corfu, which-key, Dired, diredfl, centaur-tabs, solaire-mode,
rainbow-delimiters, Gnus, Message, ERC, Elfeed, Eshell and the terminal colors.

## Installation

### Emacs

```sh
mkdir -p ~/.emacs.d/themes
curl -fsSL https://raw.githubusercontent.com/darkmattertheme/emacs/main/darkmatter-theme.el \
  -o ~/.emacs.d/themes/darkmatter-theme.el
```

Or with `use-package` on Emacs 30+:

```elisp
(use-package darkmatter-theme
  :vc (:url "https://github.com/darkmattertheme/emacs")
  :config (load-theme 'darkmatter t))
```

### Doom Emacs

```sh
mkdir -p ~/.config/doom/themes
curl -fsSL https://raw.githubusercontent.com/darkmattertheme/emacs/main/doom-darkmatter-theme.el \
  -o ~/.config/doom/themes/doom-darkmatter-theme.el
```

## Usage

### Emacs

In `init.el`:

```elisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'darkmatter t)
```

### Doom Emacs

In `~/.config/doom/config.el`, then run `doom sync`:

```elisp
(setq doom-theme 'doom-darkmatter)
```

Set `doom-darkmatter-brighter-modeline` to `t` before the theme loads for a
Shadow mode line instead of Umbra.

The core palette lives in
[darkmattertheme/darkmatter](https://github.com/darkmattertheme/darkmatter),
and every other port is listed at
[darkmattertheme.com](https://darkmattertheme.com/ports).

## Credits

- [@stevedylandev](https://github.com/stevedylandev)
- Adapted from [base16 Black Metal Bathory](https://github.com/metalelf0/base16-black-metal-scheme)
