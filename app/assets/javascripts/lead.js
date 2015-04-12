var toggle_new_lead = function(){
    $('.add_lead_link').click(function(){
        $(this).parent().addClass('is-hidden');
        $(this).parent().parent().siblings('.add_new_lead').removeClass('is-hidden');
    });
};
