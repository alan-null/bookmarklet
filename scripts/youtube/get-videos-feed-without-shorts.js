var channel_id = ytInitialData.responseContext.serviceTrackingParams
    .find(isGoogleHelpService)
    .params.find(isBrowseIdKey)
    .value;

if (channel_id.length > 0) {
    var feed_id = channel_id.replace('UC', 'UULF');
    var feedUrl = 'https://www.youtube.com/feeds/videos.xml?playlist_id=' + feed_id;
    window.open(feedUrl, '_blank');
}

function isBrowseIdKey(param) {
    return param != null && param.key === 'browse_id';
}

function isGoogleHelpService(service) {
    return service != null && service.service === 'GOOGLE_HELP';
}
