$(document).ready(function() {

 $("a.up-vote-answer").click(function(event) {
      event.preventDefault();
      var $target = $(event.target);
      $.ajax({
        type: "post",
        url: $target.data("url"),
        data: $target.data(),
        success: function(response) {
          $('#answer-' + $target.data('answer-id')).empty();
          $('#answer-' + $target.data('answer-id')).append(response)
        }
      });
    }
  );

 $(".up-vote-question").click(function(event) {
      event.preventDefault();
      var $target = $(event.target);
      $.ajax({
        type: "post",
        url: $target.data("url"),
        data: $target.data(),
        success: function(response) {
          console.log(response);
          $('#question-' + $target.data('question-id')).empty();
          $('#question-' + $target.data('question-id')).append(response)
        }
      });
    }
  );

 $("a.up-vote-comment").click(function(event) {
      event.preventDefault();
      var $target = $(event.target);
      console.log($target.data("url"))
      $.ajax({
        type: "post",
        url: $target.data("url"),
        data: $target.data(),
        success: function(response) {
          console.log(response);
          $('#comment-' + $target.data('comment-id')).empty();
          $('#comment-' + $target.data('comment-id')).append(response)
        }
      });
    }
  );

});