$(document).ready(function () {
  $('.login-btn').on("click", function (e) {
    e.preventDefault();

    var url = $(this).attr('href');
    $.ajax({
      type: 'get',
      url: url,
      success: function (response) {
        $('#main').after(response);
      }
    });
  });

  $('#signup-btn').on("click", function (e) {
    e.preventDefault();
    var url = $(this).attr('href');
    $.ajax({
      type: 'get',
      url: url,
      success: function (response) {
        $('#main').after(response);
      }
    });
  });

  $("body").on("click", ".close", function () {
    $(".overlay").remove();
    console.log('bacon');
  });
});