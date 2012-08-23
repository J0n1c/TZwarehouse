val = ''
$('#warehouse_types').on("click", ".icon-pencil", ->
  elem = $(this).parent().children('.list-elem').first()
  val = elem.html()
  elem.replaceWith(->
    elem = $('<input type="text" class="list-elem" name="warehouse_type[name]" data-submited="false"  value="' + val + '"/>')
  )
  elem.select()
)
$('#warehouse_types').on("dblclick", "span.list-elem", ->
  elem = ''
  val = $(this).html()
  $(this).replaceWith(->
    elem = $('<input type="text" class="list-elem" name="warehouse_type[name]" data-submited="false" value="' + val + '"/>')
  )
  elem.select()
)
$('#warehouse_types').on("blur", "input.list-elem", ->
  clr = "lightgray"
  elem = ''
  if ($(this).attr("data-submited")) == "true"
    val = $(this).val()
    clr = "green"
  $(this).replaceWith(->
    elem = $('<span class="list-elem">' + val + '</span>')
  )
  elem.effect('highlight', {color: clr}, 1000);
)




