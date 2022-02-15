# macOS fresh install

## Git-free install

```bash
cd ~
curl -#L https://github.com/derickkotze/dotfiles-work/tarball/main | tar -xzv --strip-components=1 --exclude='README.md' --exclude='LICENSE' --exclude='.gitignore'
./.macos <preferred_host_name>
./brew_check
./brew_install
```
