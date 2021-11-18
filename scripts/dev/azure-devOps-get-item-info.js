var parts = [''];
[].forEach.call(document.querySelectorAll('.bolt-breadcrumb-container > div .bolt-breadcrumb-item > span .bolt-breadcrumb-item-text'), function (e) {
    parts.push(e.innerText);
});
var path = parts.join('/');
var repositoryId = window.dataProviders.data['ms.vss-code-web.versioncontrol-viewmodel-data-provider'].gitRepository.id;
var commitId = window.dataProviders.data['ms.vss-code-web.source-explorer-tree-file-listing-data-provider'].descriptor.version;
var obj = {};
obj['path'] = path;
obj['repositoryId'] = repositoryId;
obj['commitId'] = commitId;

prompt('Copy object JSON and paste into mappings', JSON.stringify(obj));