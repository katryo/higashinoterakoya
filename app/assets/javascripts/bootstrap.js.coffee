jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()



jQuery ->
  $('.nav-pills li a').pjax('[data-pjax-container]')
