$(document).ready( function() {
  $(".import").bind("click",function(){
    var list_id = $(this).attr("rel")
    jQuery.ajax({
      type: "POST",
      url: "/todo_lists/",
      dataType: "script",
      data: "user_id=1&todo_list[basecamp_id]="+list_id
    });
  });

  $(".item_import").bind("click",function(){
    var item_id = $(this).attr("rel")
    var list_id = $(this).parent().parent().attr("id")
    jQuery.ajax({
      type: "POST",
      url: "/todo_items/",
      dataType: "script",
      data: "user_id=1&todo_item[basecamp_id]="+item_id+"&todo_list[basecamp_id]="+list_id
    });
  });



});
