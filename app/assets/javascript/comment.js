$(function() {
  function buildHTML(comment){
    let html = `<div class="Comments__field__box">
                  <div class="Comments__field__box__name">
                  ${comment.user_name}:
                  </div>
                  <div class="Comments__field__box__text">
                  ${comment.text}
                  </div>
                </div>`
    return html;
  }
  $(".Comments__form").on('submit', function(e) {
    e.preventDefault()
    let formData = new FormData(this);
    let url = $(this).attr('action')
    $.ajax({
      type: "POST",
      url: url,
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      let html = buildHTML(data)
      $(".Comments__field").append(html);
      $(".Comments__form--text").val('');
      $(".Comments__form--submit").prop('disabled', false);
      $(".Comments__field").animate({ scrollTop:$(".Comments__field")[0].scrollHeight});
    })
    .fail(function(){
      alert('error')
    })
  });
});