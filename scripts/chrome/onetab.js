window.chrome.extension.getBackgroundPage().core.getState().then(
    function (data) {
        console.log(JSON.stringify(data.tabGroups));
    }
);