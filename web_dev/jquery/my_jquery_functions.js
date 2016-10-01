$(document).ready(function(){
    $("h1").click(function(){
        $(this).hide();
    });
    $(".link").css('border', '4px solid blue');
    $(".box:eq(1)").hide(750).delay(1200).show(800);
    $(".box:parent").css('border', '2px solid red');
    //alert($('p:first').hasClass('lead'));
    $("p").hover(function(){
    	$("lead").toggleClass('red');
    })
});