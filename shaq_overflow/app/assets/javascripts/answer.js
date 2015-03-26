$(document).ready(function() {
  $(".add-answer").click(function(event){
    event.preventDefault();
    var $target = $(event.target);
    var url = $target.attr('href');
    $.ajax({
      type: 'get',
      url: url,
      success: function (response) {
        $('#main').after(response);
      }
    });
  })
});