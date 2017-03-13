# zsh-vim-mode
Modified from original zsh's [vi mode](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/vi-mode) with [history-substring-search](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/history-substring-search) compatibility.

## Install with oh-my-zsh
* Download the script or clone this repository in [oh-my-zsh](http://github.com/robbyrussell/oh-my-zsh) plugins directory:

    ```shell
    git clone git://github.com/houjunchen/zsh-vim-mode.git $ZSH_CUSTOM/plugins/zsh-vim-mode
    ```

* Activate the plugin in `~/.zshrc` (**after** history-substring-search):

    ```shell
    plugins=([plugins...] zsh-vim-mode)
    ```

* Source `~/.zshrc` to take changes into account:

    ```shell
    source ~/.zshrc
    ```
## Basic usage
Refer to [vi mode](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/vi-mode).

## More custom setup
Refer to [zshzle(1)](https://linux.die.net/man/1/zshzle).
