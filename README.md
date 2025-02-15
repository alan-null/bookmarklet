# Bookmarklet

Inspired by this [page](https://mrcoles.com/bookmarklet/).

## How to use

#### Manual

- find script that you want to use as bookmarklet in `dist` folder (1:1 name and folder structure mapping with `scripts` folder)
- copy content
- add new bookmark in your browser
- pick your name
- paste script content to **URL**
- profit 🚀

#### Auto

- Drag one of the links from **Available scripts** section onto your bookmarks bar
- profit 🚀

## Dependencies
- [openjdk 23](https://jdk.java.net/23/)
- [closure-compiler](https://mvnrepository.com/artifact/com.google.javascript/closure-compiler)

## Available scripts

#### allegro
- <a href="javascript:(function()%7B%5B%5D.forEach.call(document.querySelectorAll('div%3E%20button%5Bdata-enabled*=%22true%22%5D'),function(a)%7Ba.closest(%22article%22).style.background=%22aquamarine%22%7D);%7D)()">decorate-saved-searches</a>
- <a href="javascript:(function()%7Bwindow.location=window.location+%22&stan=nowe&allegro-smart-standard=1&offerTypeBuyNow=1&ocena-produktu=od-4.8&order=qd%22;%7D)()">default-serach-filters</a>
#### chrome
- <a href="javascript:(function()%7Bwindow.chrome.extension.getBackgroundPage().core.getState().then(function(a)%7Bconsole.log(JSON.stringify(a.tabGroups))%7D);%7D)()">onetab</a>
#### dev
- <a href="javascript:(function()%7Bvar%20parts=%5B%22%22%5D;%5B%5D.forEach.call(document.querySelectorAll(%22.bolt-breadcrumb-container%20%3E%20div%20.bolt-breadcrumb-item%20%3E%20span%20.bolt-breadcrumb-item-text%22),function(a)%7Bparts.push(a.innerText)%7D);var%20path=parts.join(%22/%22);var%20repositoryId=window.dataProviders.data%5B%22ms.vss-code-web.versioncontrol-viewmodel-data-provider%22%5D.gitRepository.id;var%20commitId=window.dataProviders.data%5B%22ms.vss-code-web.source-explorer-tree-file-listing-data-provider%22%5D.descriptor.version;var%20obj=%7B%7D;obj.path=path;obj.repositoryId=repositoryId;obj.commitId=commitId;prompt(%22Copy%20object%20JSON%20and%20paste%20into%20mappings%22,JSON.stringify(obj));%7D)()">azure-devOps-get-item-info</a>
- <a href="javascript:(function()%7Bvar%20id=prompt(%22PBI/BUG/TASK%20ID%22,%22%22);if(id.length%3E0)%7Bvar%20url=%22https://dev.azure.com/Sitecore-PD/Products/_workitems/edit/%22+id;window.open(url,%22_blank%22)%7D;%7D)()">azure-devOps-open-item</a>
#### google
- <a href="javascript:(function()%7Bwindow.location=window.location+%22&gl=us%22;%7D)()">search-geolocation</a>
#### sitecore
- <a href="javascript:(function()%7Bif(window.location.search.length%3E0)%7Bwindow.location.search+=%22&aodisabled=1%22%7Delse%7Bwindow.location.search=%22aodisabled=1%22%7D;%7D)()">sxa-aodisabled</a>
#### web-dev
- <a href="javascript:(function()%7Bwindow.open(%22http://builtwith.com/%22+location.host);%7D)()">builtwith</a>
#### youtube
- <a href="javascript:(function()%7B[].forEach.call(document.querySelectorAll(%22ytd-thumbnail-overlay-resume-playback-renderer%22),function(a)%7Ba.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.remove()%7D);%7D)()">yt-remove-played-videos</a>
- <a href="javascript:(function()%7Bvar%20channel_id=ytInitialData.responseContext.serviceTrackingParams.find(isGoogleHelpService).params.find(isBrowseIdKey).value;if(channel_id.length%3E0)%7Bvar%20feed_id=channel_id.replace(%22UC%22,%22UULF%22);var%20feedUrl=%22https://www.youtube.com/feeds/videos.xml?playlist_id=%22+feed_id;window.open(feedUrl,%22_blank%22)%7Dfunction%20isBrowseIdKey(a)%7Breturn%20a!=null&&a.key===%22browse_id%22%7Dfunction%20isGoogleHelpService(a)%7Breturn%20a!=null&&a.service===%22GOOGLE_HELP%22%7D;%7D)()">get-videos-feed-without-shorts</a>