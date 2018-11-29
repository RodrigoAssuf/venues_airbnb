(function() {
  var placesAutocomplete = places({
    appId: 'plVJT4GCPIFN',
    apiKey: '1391e64b473d67d3ca60852962de3b18',
    container: document.querySelector('#address')
  });

  var $address = document.querySelector('#address-value')
  placesAutocomplete.on('change', function(e) {
    $address.textContent = e.suggestion.value
  });

  placesAutocomplete.on('clear', function() {
    $address.textContent = 'none';
  });

})();
