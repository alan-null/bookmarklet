javascript:(function()%7Bvar%20parts=[%22%22];[].forEach.call(document.querySelectorAll(%22.bolt-breadcrumb-container%20%3E%20div%20.bolt-breadcrumb-item%20%3E%20span%20.bolt-breadcrumb-item-text%22),function(a)%7Bparts.push(a.innerText)%7D);var%20path=parts.join(%22/%22);var%20repositoryId=window.dataProviders.data[%22ms.vss-code-web.versioncontrol-viewmodel-data-provider%22].gitRepository.id;var%20commitId=window.dataProviders.data[%22ms.vss-code-web.source-explorer-tree-file-listing-data-provider%22].descriptor.version;var%20obj=%7B%7D;obj.path=path;obj.repositoryId=repositoryId;obj.commitId=commitId;prompt(%22Copy%20object%20JSON%20and%20paste%20into%20mappings%22,JSON.stringify(obj));%7D)()