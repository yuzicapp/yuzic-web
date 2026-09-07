---
include_in_header: false
layout: page
title: Privacy Policy
---

**Last updated**  
9/7/2026

# Privacy Policy

**Yuzic** is a personal music player and streaming app built with React
Native. This Privacy Policy explains how Yuzic handles user data and
permissions across all supported platforms, including **Android** and
**iOS**.

Yuzic is designed to function **without collecting personal data**.

<br>

## 1.0 Information We Collect

### 1.1 Default Behavior

Yuzic does **not** collect, store, or share personal information.

- All music playback occurs entirely on your device.
- If you connect to your own self-hosted server, all communication happens
  directly between your device and that server.
- No data is routed through or stored on any developer-controlled
  servers.

<br>

## 2.0 Permissions

Yuzic requests only the permissions it needs to play music:

- **Internet access**, to reach the servers you configure
- **Media playback in the background**, so audio continues when the app
  is not in front
- **Audio settings**, to route playback to your chosen output and
  respond to other apps taking over the audio
- **Vibration**, for haptic feedback in the interface

Yuzic does **not** request microphone or "record audio" permission. It
has no voice input and no audio capture features of any kind.

<br>

## 3.0 Third-Party Services

Yuzic uses the following third-party services to power certain features.
None of these services receive personal identifying information from the
app. All requests are made directly from your device.

### 3.1 Deezer

Yuzic uses the **Deezer** public API to provide:

- Album artwork and metadata for external album and artist pages
- Artist top tracks and 30-second song preview playback
- Album and artist recommendations
- Similar artist discovery

When these features are used, artist names, artist IDs, and album IDs
are sent to Deezer's servers. No personal data, account information, or
playback history is transmitted.

Preview audio is streamed directly from Deezer's CDN to your device.

Deezer's privacy policy is available at [deezer.com/legal/privacy](https://www.deezer.com/legal/privacy).

### 3.2 Last.fm

Yuzic uses the **Last.fm** API to power artist and song recommendations.

- Artist names are sent to Last.fm to retrieve lists of similar artists
- This data is used locally to populate recommendation sections and is
  not stored or shared

If you choose to enable **Last.fm scrobbling**, your playback history
(track title, artist, and album) will be sent to Last.fm in accordance
with their service. This is entirely optional and disabled by default.

Last.fm's privacy policy is available at [last.fm/legal/privacy](https://www.last.fm/legal/privacy).

### 3.3 Self-Hosted Media Servers

Yuzic supports connections to user-operated media servers including
**Navidrome**, **Jellyfin**, and **Emby**.

- All communication occurs directly between your device and the server
  you configure
- The developer has no access to your server, its content, or any data
  exchanged

### 3.4 Optional Integrations (Lidarr, Slskd, SoulSync)

Yuzic supports optional integrations with self-hosted tools such as
**Lidarr**, **Slskd** and **SoulSync**.

- These integrations connect directly to servers you own and control
- No data from these connections is accessible to or stored by the
  developer
- You should review the privacy policies of any self-hosted tools you
  choose to use

<br>

## 4.0 Data Security

- Yuzic does not retain personal user data
- All server connections use **secure HTTPS protocols** when available
- Credentials for connected servers are stored locally on your device
  using the platform's secure storage mechanisms

<br>

## 5.0 Your Rights and Choices

You are always in control of your data:

1. You may revoke microphone permissions at any time in your device
   settings
2. You may disable Last.fm scrobbling at any time in the app settings
3. You may remove any connected server or integration at any time
4. The app will continue to function normally for local music playback
   regardless of which integrations are enabled

<br>
