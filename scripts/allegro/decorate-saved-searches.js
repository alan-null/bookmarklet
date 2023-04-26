[].forEach.call(document.querySelectorAll('div> button[data-enabled*="true"]'), function (e) {
    e.closest('article').style.background = 'aquamarine';
});