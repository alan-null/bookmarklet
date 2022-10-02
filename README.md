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

- <a href="javascript:(function()%7Bvar%20parts=[%22%22];[].forEach.call(document.querySelectorAll(%22.bolt-breadcrumb-container%20%3E%20div%20.bolt-breadcrumb-item%20%3E%20span%20.bolt-breadcrumb-item-text%22),function(a)%7Bparts.push(a.innerText)%7D);var%20path=parts.join(%22/%22);var%20repositoryId=window.dataProviders.data[%22ms.vss-code-web.versioncontrol-viewmodel-data-provider%22].gitRepository.id;var%20commitId=window.dataProviders.data[%22ms.vss-code-web.source-explorer-tree-file-listing-data-provider%22].descriptor.version;var%20obj=%7B%7D;obj.path=path;obj.repositoryId=repositoryId;obj.commitId=commitId;prompt(%22Copy%20object%20JSON%20and%20paste%20into%20mappings%22,JSON.stringify(obj));%7D)()">azure-devOps-get-item-info</a>
- <a href="javascript:(function()%7Bvar%20id=prompt(%22PBI/BUG/TASK%20ID%22,%22%22);if(id.length%3E0)%7Bvar%20url=%22https://dev.azure.com/Sitecore-PD/Products/_workitems/edit/%22+id;window.open(url,%22_blank%22)%7D;%7D)()">azure-devOps-open-item</a>
- <a href="javascript:(function()%7Bwindow.location=window.location+%22&gl=us%22;%7D)()">search-geolocation</a>
- <a href="javascript:(function()%7Bif(window.location.search.length%3E0)%7Bwindow.location.search+=%22&aodisabled=1%22%7Delse%7Bwindow.location.search=%22aodisabled=1%22%7D;%7D)()">sxa-aodisabled</a>
- <a href="javascript:(function()%7Bwindow.open(%22http://builtwith.com/%22+location.host);%7D)()">builtwith</a>
- <a href="javascript:(function()%7B[].forEach.call(document.querySelectorAll(%22ytd-grid-video-renderer%20ytd-thumbnail-overlay-resume-playback-renderer%22),function(a)%7Ba.parentElement.parentElement.parentElement.parentElement.parentElement.remove()%7D);%7D)()">yt-remove-played-videos</a>