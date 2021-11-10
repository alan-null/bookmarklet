# Bookmarklet

Inspired by this [page](https://mrcoles.com/bookmarklet/).

## How to use

### Manual

- find script that you want to use as bookmarklet in `dist` folder (1:1 name and folder structure mapping with `scripts` folder)
- copy content
- add new bookmark in your browser
- pick your name
- paste script content to **URL**
- profit 🚀

### Auto

- Drag one of the links from **Available scripts** section onto your bookmarks bar
- profit 🚀

## Available scripts

- <a href="javascript:(function()%7B[].forEach.call(document.querySelectorAll(%22ytd-grid-video-renderer%20ytd-thumbnail-overlay-resume-playback-renderer%22),function(a)%7Ba.parentElement.parentElement.parentElement.parentElement.parentElement.remove()%7D);%7D)()">yt-remove-played-videos.js</a>