$(function(){
  $("#buy").click(show_seating_chart);
  $("#cancel").click(hide_seating_chart);
  $("#seats").on("click", ".box", selected);
  $("#purchase").click(purchase_tickets);
});

function show_seating_chart()
{
  $("#buy").hide();
  $("#seats").removeClass("hide");
  $("#purch").removeClass("hide");
}

function hide_seating_chart()
{
  $("#buy").show();
  $("#seats").addClass("hide");
  $("#selected").empty();
  $("#purch").addClass("hide");
}

function selected()
{
  $("#purch").removeClass("hide");
  var selection = $(this).text();
  var div = $("<div>").text(selection);
  div.addClass("box");
  $("#selected").prepend(div);
  $(this).addClass("bought");
}

function purchase_tickets()
{
  var tickets_array = $("#selected").children().map(function(){return $(this).text();});
  var tickets = "";
  _.each(tickets_array, function(element){tickets = tickets+" "+element;});
  var token = $("input[name=authenticity_token]").val();
  var tid = $("#tid").text();
  $.ajax({
    dataType: 'json',
    type: "POST",
    url: "/theaters/"+tid+"/buy",
    data: {authenticity_token:token, ticket_ids:tickets, theater_id:tid}
  }).done(display_bought);
  return false;
}

function display_bought()
{
  hide_seating_chart();
  $("#bought_message").removeClass("hide");
}