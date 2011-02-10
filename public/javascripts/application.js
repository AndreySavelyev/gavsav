$(function()
{
    /* кнопки для сабмита с классом submit_button */
    $('.submit_button').livequery('click',
        function()
        {
            $(this).parents('form').submit();
            return false;
        });
});

