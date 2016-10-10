# Dots

dot files, setup notes, reminders, install lists, and various other items to try and make things easier.


## Use

Make backups of any local files you want to keep before removing & linking to dots.

> Note: link paths assume you've cloned this repo to ~/.dots Adjust as needed for other install points. 


### Setup bash profile
```
$ rm ~/.bash_profile
$ ln -s ~/.dots/bash/bash_profile ~/.bash_profile
$ ln -s ~/.dots/bash/dir_colors ~/.dir_colors
$ source ~/.bash_profile
```

> Note: You may want to use .profile in place of .bash_profile

### Setup Vim
```
$ rm ~/.vimrc
$ ln -s ~/.dots/vim/vimrc ~/.vimrc
$ ln -s ~/.dots/vim/colors/ ~/.vim/colors
```

### Setup Git
```
$ rm ~/.gitconfig
$ rm ~/.gitignore_global
$ ln -s ~/.dots/git/gitconfig ~/.gitconfig
$ ln -s ~/.dots/git/gitignore_global ~/.gitignore_global
$ ln -s ~/.dots/git/commit_template ~/.git_commit_template
```

> Note: If git autocomplete isn't working check for `/usr/local/etc/bash_completion`, if it's missing: run ```$ ln -s /usr/local/etc/bash_completion.d/git-completion.bash /usr/local/etc/bash_completion```

#### Setup Git User
Use githome/gitwork alias, or:

```
$ ln -s ~/.dots/git/gituser_WHICH ~/.gituser
```

> Note: WHICH = work|home. This allows distinct identities when needed (update these profiles as needed or I'll get credit for your commits :)).

### Setup Homebrew (macOS)
```
$ brew tap homebrew/bundle
$ brew bundle --file=~/.dots/homebrew/Brewfile
```

## License
Everything in this repo is licensed under the [GPL v2](https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html).