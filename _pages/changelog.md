---
layout: page
title: What's New
include_in_header: true
---

# Changelog

<br>

### `Latest`
# **Version 2.3.0**
Yuzic now plays from Plex, keeps working behind an authenticating reverse proxy, and lets you add local files whenever you like — plus a fix for signing in to the newest Jellyfin.

#### Servers
- **Plex is now a supported music server.** Browse and play your Plex library alongside Navidrome, Jellyfin, and Emby
- **Servers behind a Basic-auth reverse proxy work end to end.** The audio stream and the artwork both carry the authentication your proxy expects, so lock-screen and Now Playing covers load instead of failing quietly
- Plex libraries come through complete — albums, tracks, and playlists page correctly instead of stopping at the first batch

#### Local files
- **Import local audio any time.** Adding music from this device is no longer a one-time step during setup — it lives in Settings → Library

#### Fixes
- **Signing in to Jellyfin 12 works again.** The newest Jellyfin rejected a login that did not name the app; Yuzic now identifies itself and connects

# **Version 2.2.2**
Yuzic now plays FLAC streams at their original quality on iOS, shows the picture attached to your account, and is more dependable in the moments between tracks.

#### Playback
- **Original-quality FLAC on iOS.** FLAC streams no longer need to be transcoded before they reach the player
- A player drag that was interrupted can no longer leave the mini player invisible

#### Your account
- **Your account picture now appears throughout the app.** Navidrome, Jellyfin, and Emby avatars replace the initial-in-a-disc where the server provides one

#### Project
- The README is simpler, with a refreshed gallery generated from the same app captures used for the store listing

# **Version 2.2.1**
Reach the next track without looking, and a playback speed that stays where you put it. Podcasts get the two things they were missing: their own speed, and a place in Continue Playing.

#### Playback
- **Swipe the cover art** on the player to move to the next or previous track — the gesture the artwork always looked like it should have
- **Playback speed is remembered per kind of listening.** One speed for music, another for anything spoken, each kept across restarts. It used to be a single number that reset to 1× on every launch and followed you out of a podcast into the next song
- **Continue Playing can resume a podcast episode.** It joins what you were listening to against your synced library, and an episode is never in that library — so the bookmark existed with nothing able to draw it

#### Downloads
- **Every download button now behaves the same way.** Album, playlist, genre and artist had drifted into three different behaviours — two showed a spinner where the progress was actually measurable, and three finished with a bare tick while the album screen alone celebrated. One control now owns all three states everywhere
- **Fixed downloads that could stop silently.** When the system service behind background transfers was unreachable, every track failed at once and the button simply went back to a download arrow — no error, no spinner, indistinguishable from a tap that never registered. Yuzic now finishes the download in the foreground instead
- A download that does give up says which track it was, and that it stays queued

#### Fixes
- The version line in Settings, and the last row of the offline downloads list, no longer sit behind the tab bar when the translucent dock is on

# **Version 2.1.1**
Yuzic stays useful when your server isn't there. Searching, browsing and the surfaces that need a server all say what they can and can't do, instead of hanging or looking broken.

#### Offline
- **Searching offline returns your library.** It used to return nothing: the search asked your server, waited for a request that could never arrive, and then reported an error over results it already had
- Every keystroke no longer starts a request that can only time out, so search stays responsive with the server unreachable
- Deezer results still come through when it's only your own server that's away — a VPN being down doesn't mean the internet is
- Radio, podcasts and shares say they aren't available offline, rather than spinning and then failing to load
- The library says it's showing your synced copy and downloads

#### Servers
- **Client certificates now work on Android**, not only iOS. Import the PKCS#12 file (`.p12`/`.pfx`) your server issued you, under Settings → Server

#### Playback
- The lock screen, notification and car display no longer show the previous track after a crossfade — they now follow what's actually playing
- A seek inside a transcoded stream no longer ends the track

# **Version 2.1.0**
A server that asks the client to prove who it is can now be reached from iOS, and a stream that breaks part-way is picked back up instead of losing the track.

#### Servers
- **Client certificates (iOS)** — import the PKCS#12 file (`.p12`/`.pfx`) your server issued you, under Settings → Server. Yuzic presents it for the whole conversation with your server: signing in, browsing, artwork and the audio itself. For a Navidrome, Jellyfin or Emby behind a reverse proxy doing mutual TLS
- The certificate is kept in the device keychain, and is presented only to your own server — never to Deezer, Last.fm or anything else Yuzic talks to
- Android does not support client certificates yet; the setting says so rather than failing to connect *(added in 2.1.1)*

#### Playback
- A transcoded stream that breaks part-way is picked back up, instead of the track ending there
- Playback recovers in cases where it used to stop and stay stopped

# **Version 2.0.2**
More of the same fault, found properly this time: a stalled stream that never reported anything at all.

#### Playback
- Tracks no longer go quiet part-way through on a patchy connection
- A crossfaded track no longer stops the queue when it finishes
- Playing again works after a stream fails or a headphone disconnects
- The player says "buffering" instead of going silent while it retries
- Fewer requests to your server while music is playing
- A failed download is no longer cached as silence

# **Version 2.0.1**
Fixes for playback on a weak connection, and a Settings screen sorted by what things actually are.

#### Playback
- Songs no longer cut off part-way through when the network stalls
- A brief drop no longer ends the track — playback picks the file back up
- The player says it is buffering instead of going quiet while it retries

#### The app
- Screens say when they failed to load, instead of looking empty
- An outage at Deezer or Last.fm no longer reports your own server as unreachable

#### Settings
- The equalizer has its own screen, so scrolling past it cannot move a band
- Playback holds what you hear and Appearance holds what you see
- Home shelf sources moved to their own Home screen

# **Version 2.0.0**
Yuzic now has its own audio engine. Playback was rebuilt from the ground up around an audio graph rather than a single player, which is what makes crossfade, gapless joins and a real equalizer possible at all. The rest of the app caught up around it.

#### What's New
- A new audio engine, built for Yuzic
- Crossfade, with a gapless-aware mode that does not fade a segued album through its own joins
- Ten-band equalizer and replay gain, with album and track modes
- Ogg Vorbis and Opus now play at original quality on iOS
- CarPlay and Android Auto play the quality you actually chose
- A unified Downloads screen, with progress and cancel
- Automatically download new songs
- SoulSync as a download source
- Sleep timer that fades out rather than cutting
- Appearance settings for list density, corner radius, glyph scale and a translucent dock
- The bottom of the app is one dock instead of a card on a slab
- Screen reader labels on every control you can reach
- More of the app speaks your language

#### Bug Fixes
- Screens now say when they failed, instead of saying they are empty
- The app tells outside services to wait until asked, rather than reaching out on its own
- Album screens keep the colour their cover actually has
- Sort controls say how a list is ordered rather than restating the title
- Lidarr album downloads resolve more reliably
- Removed Cast and trimmed permissions

### **Version 1.3.4**

#### What's New
- External source seperation
- Deezer integrations toggles
- Style and colors refactor
- Server playcount syncs
- Quick picks

#### Bug Fixes
- Offline mode fix

### **Version 1.3.5**

#### What's New
- Settings remodel
- Streaming quality
- Unified screens
- Optional external source enchancement
- Click lyrics to seek

#### Bug Fixes
- Image caching

### **Version 1.3.6**

#### What's New
- UPnp & DLNA
- Google Cast
- Concurrent downloads
- Jellyfin Quick Connect

#### Bug Fixes
- Large library issues

### **Version 1.3.7**

#### What's New
- Lucide icon consistency
- Buffering state
- Album title metadata
- Sleep timer
- Playback speed

#### Bug Fixes
- View external artist

# **Version 1.3.0**
This version focuses on music discovery. Using Deezer recommendations, similar songs, etc are seen throughout the app.

#### What's New
- Carplay & Android Auto
- Deezer external song samples
- Updated library screens and discovery sections
- Better search with Deezer
- Last.fm scrobbling
- Downloading more accessible
- Better discographies
- Offline polish
- External artist top tracks

#### Bug Fixes
- Crashes?
- Performance

# **Version 1.2.0**
The app has been further redesigned to accommodate a more standard music player experience, and also to allow the app to grow further. Tabs now exist at the bottom. The explore screen becomes the new Home Screen and the library has a dedicated screen with downloads as well. The app has also become offline first, ensuring that it works with no connection. I moved back to react-native-track-player to get better performance and less crashes. We'll see which track player I end up using in the long run.

#### What's New
- Dedicated home and library tabs
- Basic auth via Credentials
- Library selection
- Offline-first syncing (no covers as of now)
- Chinese translation
- Downloaded filter in library
- Genres and a dedicated screen

#### Bug Fixes
- Crashes
- Performance issues
- Stability

# **Version 1.1.0**
The entire library fetching system has been reworked to be cleaner, and work with Jellyfin. Almost every component has been touched up in some way. Images now get defined qualities significantly improving performance on top of the new system. Reworked caching ensures your data doesn't go stale, but is remembered. Opt-in analytics have been introduced in an effort to get more tester feedback. + **A WHOLE LOT MORE**

#### What's New
- **Jellyfin Support**
- Reworked library fetching, the app now defines adapters for Navidrome and Jellyfin that it can use throughout the app.
- Touched up screens throughout.
- Images now define what quality they should be. No more fetching a big image for a smaller image in the app.
- Tanstack Query is now used by components, directly talking to the api adapter.
- Query lets the app know when to refetch, and can persist data.
- A **New** server screen lets users easily switch between Navidrome and Jellyfin.
- Reworked playback, RNTP isn't reliable so the app handles the queue now, increasing performance and load times.
- Optional remove AI button from playing bar.
- Skeleton loading
- Read more on Last.fm via artist screen
- Get started screen shows up once
- Select from multiple AI Providers
- Opt-in analytics
- Type-safe updates

#### Bug Fixes
- Android playing bar touch works
- Glitchy queue after dragging
- Jellyfin duration bug
- Confusing lidarr plugin toggle

### **Version 1.1.1**
Light mode fully complete, touchups and bug fixes.

#### What's New
- Skeleton loading on homepage
- Lightmode
- Improved lidarr (if the program itself would work)

### **Version 1.1.2**
Small improvements and bug fixes

#### What's New
- Borders on headers
- Lightmode touchups, playlist list
- Discord about button
- Stats make more sense

#### Bug Fixes
- Local addresses on android?
- Seeking on android?

### **Version 1.1.3**
Upgrading and stabalizing dependencies.

#### What's New
- Expo SDK 53
- React 9
- Replaced react-native-ios-context-menu with @react-native-menu/menu

#### Bug Fixes
- Android insets on playing screen
- Android local addresses?

### **Version 1.1.4**

#### What's New
- Lyrics
- Light and darkmode selector
- New context menus
- New context options
- New info modal for items
- Internal only toggle

#### Bug Fixes
- IOS connection issue
- Android playing screen
- Android glass fix

### **Version 1.1.5**

#### What's New
- Discovery page
- Listenbrainz & MusicBrainz instead of Last.fm
- Accurate playcounts
- External types
- Placeholder images for every image
- Consistent bottom sheets
- Scrobbling
- Removed AI Button
- Action buttons

#### Bug Fixes
- Toasts showing below playing screen bottom sheet
- Server URL overflows
- Jellyfin seeking?
- Tapping connectivity errors

### **Version 1.1.6**

#### What's New
- External album and artist pages
- Three categories to browse from
- View all bottom sheet
- View external album from library album
- Octo-fiesta support

#### Bug Fixes
- Scrobbles are legit

### **Version 1.1.7**

#### Bug Fixes
- Playing screen lag ( still exists )
- Media image loading fix ( still exists? )

### **Version 1.1.8**

#### What's New
- Slskd downloader support
- Bottom sheets fully replacing other menus
- Queue touchups
- Explore rework ( more to come )

#### Bug Fixes
- Skipping

### **Version 1.1.9**

#### What's New
- Recently played
- Playing screen remodel
- Search now includes artists, albums, and playlists
- Discovery section remodel
- Play similar music queues via the Dial on the Discovery page
- Add to playlist action button
- Artist bottom sheet

#### Bug Fixes
- Smoother loading

### **Version 1.1.10**

#### Bug Fixes
- Recently played music and playcounts relying on a ListenBrainz connection
- Alignment on Discovery page

### **Version 1.1.11**

#### Bug Fixes
- Dial misalignment

### **Version 1.1.12**

#### What's New
- Albums in your library link with MusicBrainz
- View external albums and artists
- Navidrome token-based auth
- Song Info
- Instant Mix Option
- Removed opt-in analytics
- Japanese localization thanks to yamadou5832

#### Bug Fixes
- All api routes now have associated clients

### **Version 1.1.13** 

#### What's New
- French localization

#### Bug Fixes
- Server specific downloaders
- Android clicking player notification crash

### **Version 1.1.14**

#### What's New
- react-native-nitro-player
- Equalizer
- Carplay & Android Auto
- Faster downloads
- List/Grid bottom sheet

### **Version 1.1.18**

#### What's New
- Album, Playlist, and Artist page redesign
- Track filter
- Offline-mode
- Better downloads
- Better download visiblity
- App version in settings
- Download details in library settings
- Android auto & carplay
- Select navidrome library

### Bug Fixes
- Player
- Downloading loading
- Crashing

### **Version 1.1.19**

### Bug Fixes
- Large playlists
- Downloading
- 

### **Version 1.1.20**

### Bug Fixes
- General issues
- Large playlists and track player issues