var id = prompt('PBI/BUG/TASK ID', '');
if (id.length > 0) {
    var url = 'https://dev.azure.com/Sitecore-PD/Products/_workitems/edit/' + id;
    window.open(url, '_blank');
}