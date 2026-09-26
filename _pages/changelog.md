---
layout: page
title: What's New
include_in_header: true
---

# Changelog

<br>

### `Latest`
# **Version 2.13.0**

#### How the app looks is yours to set
- **Text size changes the app as soon as you pick it.** It used to wait for the next time Yuzic started, which made the setting look broken
- The icons beside the text grow with it, so a row still reads as one line rather than big words next to small arrows
- The tab bar and the playing bar keep their size on purpose: they are a fixed strip the rest of the app is measured against

#### Spacing reaches the rest of the app
- **Your spacing choice now applies to the play queue,** which drew its rows at a fixed size whatever you picked
- And to Quick picks on Home, and to your Library's own rows — half that screen moved with the setting and half did not
- **Lists no longer resize as they finish loading.** The placeholders shown while a list loads were a fixed size, so the list jumped the moment the music arrived

#### Corners
- The playing bar's artwork follows your corner style, and so does the artwork at the top of every options sheet

#### Artwork
- **An album with no artwork gets its own colour and initials** instead of the same grey icon on every one. Live recordings and bootlegs stop looking like one repeated tile. Nothing to set up, and an album keeps the same colour every time

# **Version 2.12.0**

#### In the car
- Opening Yuzic from CarPlay with your phone app closed works. 2.11.0 said it fixed this, and the fix was genuinely written, but it was missing from the build that shipped — so nobody ever got it. It is really in this one

#### Reordering
- Dragging Home shelves into the order you want, under Settings › Discovery › Home, works again. The handle moved the row but the new order was measured from the wrong place
- Dragging is smoother in playlists, the play queue and settings

# **Version 2.11.0**

#### Search and browse
- Search opens on your library instead of an empty page
- The keyboard no longer forces itself open when you get there; your recent searches appear when you tap the field
- Browse by genre, with each genre drawn at the size of how much of it you own

#### Artists and albums
- An artist's discography opens as a sortable list, rather than hiding behind a "more" button
- The three track sections on an artist all show the same number of tracks
- Albums read every genre and mood your files carry, and tell a single apart from an EP

#### Playback
- Loudness normalisation, so quiet and loud albums play at the same level. The figures come from the measurements your server already had and was sending all along; nothing needs rescanning. Under Settings › Player

#### Fixes
- Jellyfin no longer reports an error for a track that simply has no lyrics
- Home stopped redrawing itself on every track change, and the tab bar stopped rebuilding on every screen you open

# **Version 2.10.0**

#### Make it yours
- Set your own background, card and text colours, separately for light and dark
- Save what you make as a theme, and pick from a gallery of them
- The accent can follow the cover of whatever is playing
- Text stays readable when a page and the cards on it are opposite shades

#### Backgrounds
- Draw the app over a photo of your own, or over the cover that is playing, with blur and dim
- The background sits behind every tab, not only Home

#### Layout
- Float the tab bar off the edges, make it translucent, or label the tabs
- A compact player, so the lyrics and everything under them start sooner
- A full-width player as well
- Larger or smaller text throughout

#### Library
- Pull down on your library to ask the server for changes there and then

# **Version 2.9.0**

#### In the car
- CarPlay, Android Auto and Android Automotive show your library as tabs: Recent, Favorites, Playlists, Albums and Downloads
- Every album and playlist starts with Shuffle
- Android Auto and Automotive draw albums and playlists as covers, and can search your library and take spoken requests
- The car works with the app closed. Opening Yuzic from CarPlay alone used to show an empty list
- Android picks up the last queue when the car or a headset asks to carry on
- CarPlay lists what is up next, and you can jump to any of it

#### Fixes
- A favourite song no longer disappears from its album and playlists in the car
- Offline, the car shows only downloaded songs, and they play from the phone. Every song used to stream, so none played
- Covers show in the car for servers that need a login
- Albums fetched for the car now appear without leaving and coming back

# **Version 2.8.2**

#### Large libraries
- A library of 90,000 songs no longer crashes the app, whether it is syncing for the first time or opening with the library already on the phone
- Opening the app reads your library from the phone instead of downloading it all again
- Opening Tracks on a large library takes about half a second, down from over three. Every name went through a slow text comparison about 1.5 million times; each is now prepared once
- Much less memory and storage. At 90,000 songs the saved library drops from 512 MB to 128 MB, and the app uses about 50 MB less while it runs

#### Playback
- A song that will not play is tried once more, then skipped. It used to be retried forever with the processor running flat out, and pausing did not stop it
- After three songs in a row fail, playback stops and keeps your queue, instead of dropping each one while Autoplay kept adding more
- On Android, a song that got a login or error page instead of audio, from hotel Wi-Fi or a broken proxy, plays again once the connection is fixed. The page had been saved as the song and was replayed every time

# **Version 2.8.1**

#### Large libraries
- Scanning a large Jellyfin library no longer crashes the app. The library was asked for in one request, and past about 50,000 tracks that single response was big enough to run the app out of memory before it could draw anything
- The library is fetched a page at a time now
- Sorting a large library no longer rebuilds the whole list first

# **Version 2.8.0**

#### Large libraries
- The app starts and scrolls quickly with a big library. The whole catalog was written to disk again whenever anything changed, and read back in full before the app could draw
- At 80,000 tracks that was 98 MB every time. Ten second cold starts, and a screen that stopped taking taps, were both this

#### Your server
- Android reaches a server behind a certificate authority of your own. Android ignores a root you installed yourself unless an app asks it not to, so Caddy's tls internal worked everywhere except here
- The app says when a certificate was refused, instead of reporting it as an address it could not reach
- A fallback URL is tried when the first address stops answering. One that timed out used to end the attempt, so a Tailscale address was never reached from outside your network

#### Getting music
- Downtify can be connected as a downloader, alongside Lidarr, slskd and SoulSync
- MusicBrainz can point at a mirror you run yourself

#### Elsewhere
- Tracks in Your Mix play when you tap them. Only the shuffle button worked
- The last track on the mix screen is no longer hidden behind the playing bar

# **Version 2.7.2**

#### Signing in to Plex
- Plex sign-in works. It could not be completed at all before
- The code is now four characters, which is what plex.tv/link accepts. It was 25 characters, with nowhere to enter it
- The screen names plex.tv/link
- Each server type shows its own port in the address hint. Plex's was showing Navidrome's

#### When sign-in fails
- Approving a code is no longer reported as the code expiring
- The app says whether the server refused your account or could not be reached
- Jellyfin Quick Connect had the same fault and is fixed too

# **Version 2.7.1**

#### Playback
- Tracks no longer stop part-way through and skip to the next song
- Seeking near the end of a track no longer ends it
- A track cut short is no longer treated as one that finished

#### Your server
- Plex now records what you play. Play counts, last played dates and Now Playing all start working
- Starring a track on Plex works. It had never worked, in either direction
- Jellyfin is told when you pause and when you stop, so it stops showing you as playing
- Listens sent to Navidrome are no longer dated 1970 when the app cannot say when they started
- Tracks under 30 seconds are no longer submitted, because Last.fm and ListenBrainz refuse them. Your own history still records them
- A track playing when the app is killed is saved and reported next launch

#### Elsewhere
- Landscape is for tablets again. iPads, Android tablets and unfolded foldables still rotate
- Removing a server now deletes its listening history, ratings, wants, search history and download settings

# **Version 2.7.0**

#### Ratings
- Rate songs and albums out of five, kept on your server
- Rate from the player, from the song and album menus, or sort a list by rating
- Tap the star already set to clear the rating
- Ratings show straight away and stay until the server answers
- Available on Navidrome and other Subsonic servers. Jellyfin and Emby keep likes instead, and on Plex a favourite is a rating, so the controls stay hidden there

#### Every screen size
- The app lays out for the window it is in: landscape, Split View, or a half-open foldable
- The player has a second layout for a screen on its side
- A wider window shows more artwork rather than bigger artwork
- Nothing moved on a phone
- Onboarding forms scroll once they no longer fit

#### Downloads and wants
- Get and Want are on the artist and album screens, not just in a menu
- Following an artist works from the artist screen
- Following an artist saves the want too, so you can see what came of it
- Sending an album to a downloader closes the sheet and reports progress as it goes
- Following an artist asks which service, which quality profile, which albums to watch, and whether to search now
- Following an artist Lidarr already knew now works
- Following an artist needs Lidarr. Without it, the button offers to connect one

#### Everywhere else
- Home says when it is offline, the way Library and Search already did
- Screen readers name controls they used to skip, including library rows and tiles, settings switches, and the artist on every track
- The radius and density pickers say which option you are on

# **Version 2.6.4**

#### Listening
- Yuzic records what happened when a track played, not just that it played
- A track cut short by a bad connection no longer counts against the song
- Nothing is reordered until there is enough history to mean something
- Existing play counts carry over

#### Listening stats
- See what you have been listening to in Settings under Listening: total time, longest run of listening days, how much of a track you finish, and when you first heard what you play most

#### Elsewhere
- Autoplay, shuffle and what plays next share one view of your taste
- Shuffle leans toward what you like without becoming predictable
- Set aside on Home brings back albums you used to play and have not returned to

# **Version 2.6.3**

#### Playback
- Streaming stopped cutting out. The app now keeps about thirty seconds fetched ahead instead of two
- High resolution files no longer had the least buffer. It is measured in seconds now, not samples
- A slow connection shows buffering instead of playing silence

#### Signing in
- Jellyfin 12 sign-in works again. It refused the login before the password was read, which looked like a wrong password
- A Jellyfin 12 behind a reverse proxy with its own password needs `EnableLegacyAuthorization` turned back on

#### The player
- Cover art settles in place without a late jump
- The player opens the same way every time, including the first time in a session
- Swipeable covers reach the edges of their row

#### Downloaders
- A cancelled Lidarr download says cancelled, not failed
- A connection that fails says why
- Addresses and keys are trimmed, so a pasted space no longer breaks the connection
- The Home banner names only the downloaders it is counting

# **Version 2.6.0**

#### Library
- Music you add to your server shows up on its own, without a manual refresh
- Playlists say how many songs they hold instead of "0 songs"

#### Radio
- Stations show their logo in the list, the player, the playing bar and CarPlay
- Where no logo exists, the Yuzic mark is drawn instead
- Radio gets sorting and a grid view

#### Wants and downloads
- Wants gets sorting, filtering and a grid, the same controls as the library
- Downloads gets its own menu, with a refresh that re-reads your transfers
- Menus and pickers open every time you tap them, and close when you pick something

#### Fixes
- Similar artists show which are in your library and which are on your server

# **Version 2.5.0**

#### Radio
- Internet radio plays. Streams reconnect after a dropout and stop buffering while paused
- Stations keep their homepage instead of the edit form saving a blank over it

#### Wants
- Wants rows show real artwork, open what they came from, and carry the same menu as everywhere else
- A want can be sent to a connected downloader and shows its progress. Wanting never starts a download by itself
- Want an artist, not just an album

#### Playback
- Songs no longer stall at their end
- Music comes back after a call, Siri, an alarm, or another app taking the audio
- Track changes are smoother

#### Everywhere
- One options menu on every screen, instead of loose icons
- A track you own plays as your full copy instead of a 30 second preview
- Every sheet uses one background, handle and sizing

#### Polish
- The splash screen is the greyed mark on black again
- The sleep timer moved into the player's sheet, with a chip while one runs

# **Version 2.4.0**

#### Playlists
- Edit a playlist's songs. Remove and drag to reorder, on Plex too
- Playlists you play or shuffle appear on Home again
- Jellyfin playlists say who may change them

#### Podcasts
- Podcasts show their latest episodes, and downloaded episodes can be deleted
- An episode stops spinning once its download finishes

#### Playback
- The sleep timer lives in a track's options and can stop at the end of the track
- Yuzic follows a queue your car started instead of fighting it
- The volume slider sets the server's volume while the server is playing
- Playback resumes exactly where it paused

#### Servers
- Home shelves from Jellyfin, Emby and Plex, not just Navidrome
- Plex has lyrics and similar tracks
- Shared links can be renamed and have their expiry changed
- Onboarding checks the server address before asking for a password

#### Library and discovery
- One Downloads screen for offline files and downloader queues. Get offers to connect a downloader when none is set up
- Outside sources are organised by purpose: Metadata, Pages, Search and Home. Discovery stays off until you turn it on
- One rule for every picture. Images come from your server first, with Cover Art Archive and Deezer as backups
- Every server's genres show, and imported local files have genres
- slskd is named consistently: slskd for your server, Soulseek for the network

#### Fixes
- A crash takes down only the screen it happened on
- A cold start no longer leaves the library empty
- Favouriting an album works offline
- A failing server lyrics lookup no longer hides LRCLIB's lyrics
- Android back closes the open sheet instead of navigating underneath it

# **Version 2.3.0**

#### Servers
- Plex is a supported music server. Browse and play it alongside Navidrome, Jellyfin and Emby
- Servers behind a Basic-auth reverse proxy work end to end, including artwork and the audio stream
- Plex libraries page correctly instead of stopping at the first batch

#### Local files
- Import local audio any time, from Settings under Library, instead of only during setup

#### Fixes
- Signing in to Jellyfin 12 works again

# **Version 2.2.2**

#### Playback
- Original quality FLAC on iOS, without transcoding first
- An interrupted player drag can no longer leave the mini player invisible

#### Your account
- Your account picture appears throughout the app where your server provides one

#### Project
- A simpler README, with a gallery generated from the same captures as the store listing

# **Version 2.2.1**

#### Playback
- Swipe the cover art on the player to change track
- Playback speed is remembered separately for music and for spoken audio, and kept across restarts
- Continue Playing can resume a podcast episode

#### Downloads
- Every download button behaves the same way, with the same three states
- Downloads no longer stop silently when the background transfer service is unreachable
- A download that gives up says which track it was, and that it stays queued

#### Fixes
- The version line in Settings and the last row of Downloads no longer sit behind the tab bar

# **Version 2.1.1**

#### Offline
- Searching offline returns your library instead of an error
- Keystrokes no longer start requests that can only time out
- Deezer results still come through when only your own server is away
- Radio, podcasts and shares say they are not available offline
- The library says it is showing your synced copy and downloads

#### Servers
- Client certificates work on Android, not only iOS

#### Playback
- The lock screen, notification and car display follow what is actually playing after a crossfade
- A seek inside a transcoded stream no longer ends the track

# **Version 2.1.0**

#### Servers
- Client certificates on iOS. Import the PKCS#12 file your server issued, under Settings then Server
- The certificate is kept in the device keychain and presented only to your own server
- Android does not support client certificates yet, and the setting says so *(added in 2.1.1)*

#### Playback
- A transcoded stream that breaks part-way is picked back up
- Playback recovers in cases where it used to stop and stay stopped

# **Version 2.0.2**

#### Playback
- Tracks no longer go quiet part-way through on a patchy connection
- A crossfaded track no longer stops the queue when it finishes
- Playing again works after a stream fails or a headphone disconnects
- The player says buffering instead of going silent while it retries
- Fewer requests to your server while music is playing
- A failed download is no longer cached as silence

# **Version 2.0.1**

#### Playback
- Songs no longer cut off part-way through when the network stalls
- A brief drop no longer ends the track
- The player says it is buffering instead of going quiet while it retries

#### The app
- Screens say when they failed to load, instead of looking empty
- An outage at Deezer or Last.fm no longer reports your own server as unreachable

#### Settings
- The equalizer has its own screen, so scrolling cannot move a band
- Playback holds what you hear and Appearance holds what you see
- Home shelf sources moved to their own screen

# **Version 2.0.0**
Yuzic has its own audio engine. Playback was rebuilt around an audio graph rather than a single player, which is what makes crossfade, gapless joins and a real equalizer possible.

#### What's New
- A new audio engine, built for Yuzic
- Crossfade, with a gapless aware mode that does not fade a segued album through its own joins
- Ten band equalizer and replay gain, with album and track modes
- Ogg Vorbis and Opus play at original quality on iOS
- CarPlay and Android Auto play the quality you chose
- One Downloads screen, with progress and cancel
- Automatically download new songs
- SoulSync as a download source
- Sleep timer that fades out rather than cutting
- Appearance settings for list density, corner radius, glyph scale and a translucent dock
- The bottom of the app is one dock instead of a card on a slab
- Screen reader labels on every control you can reach
- More of the app speaks your language

#### Fixes
- Screens say when they failed instead of saying they are empty
- Outside services are only contacted when asked
- Album screens keep the colour their cover actually has
- Sort controls say how a list is ordered rather than restating the title
- Lidarr album downloads resolve more reliably
- Removed Cast and trimmed permissions

# **Version 1.3.7**

#### What's New
- Lucide icon consistency
- Buffering state
- Album title metadata
- Sleep timer
- Playback speed

#### Fixes
- View external artist

# **Version 1.3.6**

#### What's New
- UPnP and DLNA
- Google Cast
- Concurrent downloads
- Jellyfin Quick Connect

#### Fixes
- Large library issues

# **Version 1.3.5**

#### What's New
- Settings remodel
- Streaming quality
- Unified screens
- Optional external source enhancement
- Click lyrics to seek

#### Fixes
- Image caching

# **Version 1.3.4**

#### What's New
- External source separation
- Deezer integration toggles
- Style and colour refactor
- Server play count syncing
- Quick picks

#### Fixes
- Offline mode

# **Version 1.3.0**
Music discovery throughout the app, using Deezer recommendations and similar songs.

#### What's New
- CarPlay and Android Auto
- Deezer external song samples
- Updated library screens and discovery sections
- Better search with Deezer
- Last.fm scrobbling
- Downloading is more accessible
- Better discographies
- Offline polish
- External artist top tracks

#### Fixes
- Crashes
- Performance

# **Version 1.2.0**
The app moves to tabs at the bottom, Explore becomes Home, and the library gets its own screen with downloads. The app is now offline first.

#### What's New
- Dedicated Home and Library tabs
- Basic auth via credentials
- Library selection
- Offline first syncing, without covers for now
- Chinese translation
- Downloaded filter in the library
- Genres, and a screen for them

#### Fixes
- Crashes
- Performance
- Stability

# **Version 1.1.20**

#### Fixes
- General issues

# **Version 1.1.19**

#### Fixes
- Large playlists
- Downloading

# **Version 1.1.18**

#### What's New
- Album, playlist and artist page redesign
- Track filter
- Offline mode
- Better downloads, and better download visibility
- App version in Settings
- Download details in library settings
- Android Auto and CarPlay
- Select which Navidrome library to use

#### Fixes
- Player
- Download loading
- Crashing

# **Version 1.1.14**

#### What's New
- react-native-nitro-player
- Equalizer
- CarPlay and Android Auto
- Faster downloads
- List and grid bottom sheet

# **Version 1.1.13**

#### What's New
- French localization

#### Fixes
- Server specific downloaders
- Android crash when tapping the player notification

# **Version 1.1.12**

#### What's New
- Albums in your library link with MusicBrainz
- View external albums and artists
- Navidrome token based auth
- Song info
- Instant mix option
- Removed opt-in analytics
- Japanese localization, thanks to yamadou5832

#### Fixes
- All API routes now have associated clients

# **Version 1.1.11**

#### Fixes
- Dial misalignment

# **Version 1.1.10**

#### Fixes
- Recently played and play counts no longer rely on a ListenBrainz connection
- Alignment on the Discovery page

# **Version 1.1.9**

#### What's New
- Recently played
- Playing screen remodel
- Search includes artists, albums and playlists
- Discovery section remodel
- Play similar music from the dial on the Discovery page
- Add to playlist action button
- Artist bottom sheet

#### Fixes
- Smoother loading

# **Version 1.1.8**

#### What's New
- slskd downloader support
- Bottom sheets replacing other menus
- Queue touchups
- Explore rework

#### Fixes
- Skipping

# **Version 1.1.7**

#### Fixes
- Playing screen lag
- Media image loading

# **Version 1.1.6**

#### What's New
- External album and artist pages
- Three categories to browse from
- View all bottom sheet
- View an external album from a library album

#### Fixes
- Scrobbles are accurate

# **Version 1.1.5**

#### What's New
- Discovery page
- ListenBrainz and MusicBrainz instead of Last.fm
- Accurate play counts
- External types
- Placeholder images for every image
- Consistent bottom sheets
- Scrobbling
- Removed the AI button
- Action buttons

#### Fixes
- Toasts showing below the playing screen sheet
- Server URL overflow
- Jellyfin seeking
- Tapping connectivity errors

# **Version 1.1.4**

#### What's New
- Lyrics
- Light and dark mode selector
- New context menus and options
- New info modal for items
- Internal only toggle

#### Fixes
- iOS connection issue
- Android playing screen
- Android glass rendering

# **Version 1.1.3**
Upgrading and stabilising dependencies.

#### What's New
- Expo SDK 53
- React 9
- Replaced react-native-ios-context-menu with @react-native-menu/menu

#### Fixes
- Android insets on the playing screen
- Android local addresses

# **Version 1.1.2**

#### What's New
- Borders on headers
- Light mode touchups, playlist list
- Discord about button
- Stats make more sense

#### Fixes
- Local addresses on Android
- Seeking on Android

# **Version 1.1.1**

#### What's New
- Skeleton loading on the home page
- Light mode
- Improved Lidarr

# **Version 1.1.0**
The library fetching system was reworked to be cleaner and to work with Jellyfin. Images now request a defined quality, and caching keeps data from going stale.

#### What's New
- Jellyfin support
- Reworked library fetching, with adapters for Navidrome and Jellyfin used throughout the app
- Images request the quality they need instead of fetching a large image for a small slot
- TanStack Query used directly against the API adapter, which decides when to refetch and can persist data
- A server screen for switching between Navidrome and Jellyfin
- Reworked playback, with the app handling the queue for better performance and load times
- Optional removal of the AI button from the playing bar
- Skeleton loading
- Read more on Last.fm from the artist screen
- Get started screen shows once
- Select from multiple AI providers
- Opt-in analytics
- Type safe updates

#### Fixes
- Android playing bar touch
- Glitchy queue after dragging
- Jellyfin duration
- Confusing Lidarr plugin toggle
