[].forEach.call(document.querySelectorAll("ytd-grid-video-renderer ytd-thumbnail-overlay-resume-playback-renderer"), function (e) {
    e.parentElement.parentElement.parentElement.parentElement.parentElement.remove()
});