$(document).ready(function() {
    $('#btn').click( function() {
        sendAjaxForm('filter_form');
        return false;
    });
});

function sendAjaxForm(filter_form) {
    $.ajax({
        url: '/table',
        type: 'GET',
        dataType: 'HTML',
        data: $('#' + filter_form).serialize(),
        cache: false,
        success: function(html) {
            $('#table_items').html(html);
        },
        error: function() {
            alert('Поиск содержания числа - не доступно!')
        }
    });
}