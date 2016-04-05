$(document).ready(function () {

    $("#loginArea").hide();
    $("#registerArea").hide();
    $("#loader").hide();

    $("#registerbutton").click(function () {
        $("#registerArea").slideDown();
        $("#loginArea").hide();
    });

    $("#loginbutton").click(function () {
        $("#loginArea").slideDown();
        $("#registerArea").hide();
    });

    $("#loginBtn2, .exportLink").click(function () {
        $("#main").html("<div id='loader'><text>Please wait ...</text><img src='include/img/loader.gif'></div>");
        $("#loader").show();        
    });

});