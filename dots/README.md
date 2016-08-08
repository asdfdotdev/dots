# Dots

dot files, setup notes, reminders, install lists, and various other items to try and make things easier.


## Use

Make backups of any local files you want to keep before removing & linking to dots.

> Note: link paths assume you've cloned this repo to ~/.dots Adjust as needed for other install points. 


### Setup bash profile
```
$ rm ~/.bash_profile
$ ln -s ~/.dots/dots/bash/bash_profile ~/.bash_profile
$ ln -s ~/.dots/dots/bash/dir_colors ~/.dir_colors
$ rebash
```

### Setup Vim config
```
$ rm ~/.vimrc
$ ln -s ~/.dots/dots/vim/vimrc ~/.vimrc
```

### Setup Git config
```
$ rm ~/.gitconfig
$ ln -s ~/.dots/dots/git/gitconfig ~/.gitconfig
$ rm ~/.gitignore_global
$ ln -s ~/.dots/dots/git/gitignore_global ~/.gitignore_global
$ ln -s ~/.dots/dots/git/commit_template ~/.git_commit_template
```

> Note: If git autocomplete isn't working check for `/usr/local/etc/bash_completion`, if it's missing: run ```$ ln -s /usr/local/etc/bash_completion.d/git-completion.bash /usr/local/etc/bash_completion```

### Setup Homebrew
```
$ brew tap homebrew/bundle
$ brew bundle --file=~/.dots/dots/homebrew/Brewfile
```

### Setup PHP/JS Snippets Code
```
$ mkdir ~/Sites/Snippets
$ cd ~/Sites/Snippets
$ ln -s ~/.dots/php/ ~/Sites/Snippets/PHP
$ ln -s ~/.dots/javascript ~/Sites/Snippets/JavaScript
```