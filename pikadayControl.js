function init ( nodeId ) {
  var picker = new Pikaday ( {
    field: document.getElementById(nodeId),
    firstDay: 1,
    format: 'YYYY-MM-DD',
    minDate: new Date('2000-01-01'),
    maxDate: new Date('2030-12-31'),
    yearRange: [2000,2030]
  } ) ;
}
