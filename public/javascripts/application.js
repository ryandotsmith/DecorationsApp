$(document).ready( function() {
  $(".import").bind("click",function(){
    jQuery.ajax({
      type: "POST",
      url: "/todo_lists/",
      dataType: "script",
      data: "user_id=1&todo_list[basecamp_id]=12345"
    });
  });
});
