$(document).ready(function() {
  $(".add-question").click(function(event){
    event.preventDefault();
    var $target = $(event.target);
    var url = $(this).attr('href');
    $.ajax({
      type: 'get',
      url: url,
      success: function (response) {
        $('#main').after(response);
      }
    });
  })
});