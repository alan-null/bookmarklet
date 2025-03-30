var appUrl = 'https://localhost.net';
var url = window.location.href;
var videoId = url.split('v=')[1].split('&')[0];
var newUrl = appUrl + '/api/Push?v=' + videoId;

var base64Auth = 'YWxhbjpJbGlKa1hPOGM2MDBCY09XRmpTTQ==';
fetch(newUrl, {
    method: "GET",
    headers: {
        "Authorization": "Basic " + base64Auth,
    }
})
    .then(response => {
        console.log(response.status);
        if (response.status === 200) {
            window.location = appUrl;
        } else {
            return response.text().then(data => {
                alert("Response: " + data);
            });
        }
    })
    .catch(error => console.error("Error:", error));