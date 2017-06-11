$(document).ready(function() {
  var clipboard = new Clipboard('.clipboard-btn');

  clipboard.on('success', function(e) {
    e.clearSelection();
  });

  clipboard.on('error', function(e) {
    e.clearSelection();
  });
});
