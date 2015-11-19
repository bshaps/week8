var stocks = {
  update_all: function() {
    // Load data here
  }

}

$(function() {
  $(".btn-update").on("click", function(e) {
    var row = $(e.target).parents("tr")[0];
    var investment_id = $(row).data('investment-id');
    $.ajax({
      url: "/investments/" + investment_id + ".json",
      success: function(data) {
        console.log(data);
        tr = $("tr[data-investment-id=" + data.id + "]");
        td = $(tr).children("td")[2]
        $(td).html(data.shares)
      }
    })
  });
})
