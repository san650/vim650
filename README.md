# VIM650

A minimal vim configuration file and plugins

The idea of this project is to allow me to follow the philosophy of Doug Black about vim

> Don't put any lines in your vimrc that you don't understand.

## Installation

```
cd ~
git clone https://github.com/san650/vim650.git .vim
cd .vim
./install.sh
```

## Some tips

| Mappings                                                           | description        |
| ------------------------------------------------------------------ | ------------------ |
| __Insert mode__                                                    |                    |
| <kbd>ctrl</kbd> + <kbd>p</kbd> and <kbd>ctrl</kbd> + <kbd>n</kbd>  | completion         |
| <kbd>ctrl</kbd> + <kbd>x</kbd>                                     | completion context |
| <kbd>ctrl</kbd> + <kbd>x</kbd> and <kbd>ctrl</kbd> + <kbd>l</kbd>  | line completion    |
| __Visual mode__                                                    |                    |
| <kbd>gq</kbd>                                                      | re-format text     |

## Available text objects

| Mappings       | text object       |
| -------------- | ----------------- |
| <kbd>aw</kbd>  | a word            |
| <kbd>iw</kbd>  | inner word        |
| <kbd>at</kbd>  | a tag             |
| <kbd>it</kbd>  | inner tag         |
| <kbd>a"</kbd>  | a `"`             |
| <kbd>i"</kbd>  | inner `"` (the same for <kbd>a'</kbd>)                   |
| <kbd>a(</kbd>  | a `(` (the same for <kbd>a{</kbd> and <kbd>a[</kbd>)     |
| <kbd>i(</kbd>  | inner `(` (the same for <kbd>a{</kbd> and <kbd>a[</kbd>) |
| <kbd>ai</kbd>  | a indent          |
| <kbd>ii</kbd>  | inner indent      |
| <kbd>aI</kbd>  | a same indent     |
| <kbd>iI</kbd>  | inner same indent |
| <kbd>al</kbd>  | a line            |
| <kbd>il</kbd>  | inner line        |
| <kbd>s'</kbd>  | surround `'` (the same for <kbd>s"</kbd>, <kbd>s(</kbd>, <kbd>s{</kbd>, <kbd>s[</kbd> and <kbd>st</kbd>) |

## License

VIM650 is released under the MIT license:

www.opensource.org/licenses/MIT
