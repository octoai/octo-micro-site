$("#notifyform").submit(function(event){
    event.preventDefault();
    args = {
        "client_email": $('#client_email').val()
    };
    $.post("/notifyme", args,function(data, status){
        if(status=="success")
        {
            var text;
            if(data=="success")
            {
                text = "Hey, thanks for contacting us. We'll be in touch!"
            }
            else {
                text = "Sorry, some error occured, drop us a mail at info@octo.ai"
            }
            $("#notifyform").fadeOut( 100 , function() {
                $(this).html("<div class='formmsg " + data +"formc'>" + text + "</div>");
            }).fadeIn( 1000 );

        }
    });
});

$("#contactform").submit(function(event){
    event.preventDefault();

    // firstname: params[:fname],
    // lastname: params[:lname],
    // message: params[:contactusmessage],
    // typeofrequest: params[:requesttype],

    args = {
        "emailid": $('#email').val(),
        "fname": $('#firstname').val(),
        "lname": $('#lastname').val(),
        "contactusmessage": $('#message').val(),
        "requesttype": $("select[name='requesttype']").val()

    };
    $.post("/contact", args,function(data, status){
        if(status=="success")
        {
            var text;
            if(data=="success")
            {
                text = "Hey, thanks for contacting us. We'll be in touch!"
            }
            else {
                text = "Sorry, some error occured, drop us a mail at info@octo.ai"
            }
            $("#contactform").fadeOut( 100 , function() {
                $(this).html("<div class='formmsg " + data +"formc'>" + text + "</div>");
            }).fadeIn( 1000 );

        }
    });
});