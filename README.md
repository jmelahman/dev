# For Personal Development

To start, either add this directory to your PATH, or create aliases,

```shell
$ echo 'export PATH="$PATH:$(pwd)"' >> ~/.zshrc && source ~/.zshrc
# TODO: Double check this evaluates $(pwd) and maybe add an if statement to check if
# the path already has this path.
```

```shell
$ echo 'alias sdev="zsh ~/code/dev/sdev"' >> ~/.zshrc && source ~/.zshrc
$ echo 'alias rdev="zsh ~/code/dev/rdev"' >> ~/.zshrc && source ~/.zshrc
```

Ideally, this is set in your `.zshrc` file.
