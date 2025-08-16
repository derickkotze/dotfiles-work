# macOS fresh install

## Git-free install

```bash
cd ~
curl -#L https://github.com/derickkotze/dotfiles-work/tarball/main | tar -xzv --strip-components=1 --exclude='README.md' --exclude='LICENSE' --exclude='.gitignore'
./01_macos <preferred_host_name>
./02_brew_check
./04_brew_install
./05_vscode_extensions
```
