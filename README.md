# holtwick/tap

Homebrew tap for apps by Dirk Holtwick.

```sh
brew install --cask holtwick/tap/bx
```

| Cask | App |
| --- | --- |
| `bx` | [BX](https://bxsandbox.app/) - put the Mac apps you already use into a sandbox |

BX updates itself through Sparkle, so `brew upgrade` leaves it alone unless you pass `--greedy`.

The `bx` formula, a Node script that sandboxed one command at a time, is gone: that tool is
archived and lives on as the app above. An installed copy keeps working, but no longer updates.
