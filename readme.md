# homebrew-tap

Homebrew tap for my formulae.

## Install

Install a formula directly:

```sh
$ brew install tomeraberbach/tap/<formula>
```

Or tap first and then install by name:

```sh
$ brew tap tomeraberbach/tap
$ brew install <formula>
```

Or in a `brew bundle` `Brewfile`:

```ruby
tap "tomeraberbach/tap"
brew "<formula>"
```

## Formulae

### profiler-md

[`profiler-md`](https://github.com/TomerAberbach/profiler-md) converts
performance profiles to human and LLM friendly Markdown.

```sh
$ brew install tomeraberbach/tap/profiler-md
```

## Issues

Each project's release workflow updates its formula. Report bugs on the
project's repository rather than here.

## License

[MIT](https://github.com/TomerAberbach/homebrew-tap/blob/main/license) ©
[Tomer Aberbach](https://github.com/TomerAberbach)
