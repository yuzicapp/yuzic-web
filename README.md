# yuzic-web

The site for [Yuzic](https://github.com/yuzicapp/yuzic), a free and open source
music player for Navidrome, Jellyfin, Emby and other Subsonic servers.

Jekyll, deployed by GitHub Pages on every push to `master`.

## Running it

Needs Ruby.

```sh
bundle install
bundle exec jekyll serve
```

Then open http://127.0.0.1:4000. It rebuilds as you save.

## What is where

| | |
| --- | --- |
| `_config.yml` | Content: features, repositories, what the app works with |
| `index.html` | The home page |
| `_pages/` | Changelog, privacy policy, terms |
| `_sass/_tokens.scss` | Colours, spacing, type |
| `_data/icons.yml` | Brand marks, from [Simple Icons](https://simpleicons.org) |

## Licence

GPL-3.0, the same as the app.

The repo began as a fork of [an app landing page template](https://github.com/emilbaehr/automatic-app-landing-page),
which is why the early history is someone else's. None of that code is left.
