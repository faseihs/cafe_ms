
$(document).ready(function () {

    $('.con').click(function () {
        $(this).parents("tr").children("td").eq(2).text("done");
    });
});


