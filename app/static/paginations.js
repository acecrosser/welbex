$(document).ready(function(){
    $('#data_items').after('<div class="container" id="nav"></div>');
    let rowsShown = 10;
    let rowsTotal = $('#data_items tbody tr').length;
    let numPages = rowsTotal/rowsShown;
    for(i = 0;i < numPages;i++) {
        let pageNum = i + 1;
        $('#nav').append('<a href="#" rel="'+i+'">'+pageNum+'</a> ');
    }
    $('#data_items tbody tr').hide();
    $('#data_items tbody tr').slice(0, rowsShown).show();
    $('#nav a:first').addClass('active');
    $('#nav a').bind('click', function(){

        $('#nav a').removeClass('active');
        $(this).addClass('active');
        let currPage = $(this).attr('rel');
        let startItem = currPage * rowsShown;
        let endItem = startItem + rowsShown;
        $('#data_items tbody tr').css('opacity','0.0').hide().slice(startItem, endItem).
                css('display','table-row').animate({opacity:1}, 300);
    });
});