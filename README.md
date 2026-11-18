# yuzic-web

The site for [Yuzic](https://github.com/yuzicapp/yuzic), a free and open source
music player for Navidrome, Jellyfin, Emby and other Subsonic servers.

Jekyll, deployed by GitHub Pages on every push to `master`.

## Running it

Needs Ruby.

```sh
bundle install
LANG=en_US.UTF-8 bundle exec jekyll serve --baseurl /yuzic-web
```

Then open http://127.0.0.1:4000/yuzic-web/. It rebuilds as you save.

Two things in that command are not decoration:

- **`LANG`**, because `jekyll-sass-converter` 1.5.2 reads files in whatever
  `Encoding.default_external` says, and a shell with no locale set makes that
  US-ASCII. `_sass/_tokens.scss` has a `—` in a comment on line 3, so the
  build fails on the first non-ASCII byte it meets with `Invalid US-ASCII
  character "\xE2"`.
- **`--baseurl /yuzic-web`**, because GitHub Pages sets `baseurl` to the repo
  name for a project site and `_config.yml` does not. Without it every link
  and asset path renders as `/…` locally and `/yuzic-web/…` once deployed, so
  a local build is the wrong thing to check paths against.

Ruby 3.2 and later also need `_plugins/ruby4_liquid_taint.rb`, which is in the
repo and explains itself. GitHub Pages builds in safe mode and ignores
`_plugins/`, so it is for local builds only.

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
