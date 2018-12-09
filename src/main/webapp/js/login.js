
    $(function () {
        $('#mobile').focus(function () {
            $(this).css("background-color","darksalmon")
        })
        $('#pass').focus(function () {
            $(this).css("background-color","darksalmon")
        })
        $('#mobile').blur(function () {
            if (!(/$/).test($(this).val())) {
                $('#usernametip').removeClass("wrong").addClass("wrong1");
            } else {
                $('#usernametip').removeClass("wrong1").addClass("wrong");
            }
        })

    })
