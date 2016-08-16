$("#my_select").change(function() {
    var selection = $(this).find(":selected");
    alert(selection.data("data-some-field"));
});