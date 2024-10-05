let currentUrl = window.location.href;
let separator = '?';

if (currentUrl.includes('?')) {
    separator = '&';
}

window.location = window.location + separator + 'stan=nowe&allegro-smart-standard=1&offerTypeBuyNow=1&ocena-produktu=od-4.8&order=qd';