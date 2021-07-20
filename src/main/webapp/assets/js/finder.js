
(function($) {

  // 체크하면 투명도 변경
  $(function () {
    $('.btn-radio').click(function (e) {
      $('.btn-radio').not(this).removeClass('active')
        .siblings('input').prop('checked', false)
        .siblings('.img-radio').css('opacity', '0.5');
      $(this).addClass('active')
        .siblings('input').prop('checked', true)
        .siblings('.img-radio').css('opacity', '1');
    });
  });


  // $(function () {
  //   $('.checkbox').click(function (e) {
  //     $('.checkbox').not(this).removeClass('active')
  //       .siblings('input').prop('checked', false)
  //       .siblings('.form_element').css('opacity', '0.5');
  //     $(this).addClass('active')
  //       .siblings('input').prop('checked', true)
  //       .siblings('.form_element').css('corlor', 'red');
  //   });
  // });

  // 로그인창-회원가입창 전환
  function toggleResetPswd(e){
    e.preventDefault();
    $('#logreg-forms .form-signin').toggle() // display:block or none
    $('#logreg-forms .form-reset').toggle() // display:block or none
}

function toggleSignUp(e){
    e.preventDefault();
    $('#logreg-forms .form-signin').toggle(); // display:block or none
    $('#logreg-forms .form-signup').toggle(); // display:block or none
}

$(()=>{
    // Login Register Form
    $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
    $('#logreg-forms #cancel_reset').click(toggleResetPswd);
    $('#logreg-forms #btn-signup').click(toggleSignUp);
    $('#logreg-forms #cancel_signup').click(toggleSignUp);
})

})(jQuery);