$("#btn1").click(function () {
	var planday = $(".planday");
	var plandaybody = $(".plandaybody");

	plandaybody.fadeIn("1500");
	planday.fadeIn("1200");
})
	
$("#planclose").click(function () {
	var planday = $(".planday");
	var plandaybody = $(".plandaybody");
	
	plandaybody.fadeOut("1500");
	planday.fadeOut("1200");
})

$("label").click(function () {
	$("input[name=planItem]:checked").each(function() {
        var Itemcss = $(this).attr("id");
        /* alert($(this).parents("label").attr("for")); */
		var labels = $(this).parents("div").children("label");

        for(var i=0; i<labels.length; i++){
    		labels.eq(i).css("background-color","white");
        	labels.eq(i).css("color","black");
        	
        	if(labels.eq(i).attr("for")==Itemcss){
        		labels.eq(i).css("background-color","black");
            	labels.eq(i).css("color","white");
        	}
        }
	});
})



$(function() {
  $( "#daystart" ).datepicker({
    dateFormat: 'yy.mm.dd',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    dayNames: ['일','월','화','수','목','금','토'],
    dayNamesShort: ['일','월','화','수','목','금','토'],
    dayNamesMin: ['일','월','화','수','목','금','토'],
    showMonthAfterYear: true,
    changeMonth: false,
    changeYear: false,
    yearSuffix: '년'
  });
  
  $( "#dayend" ).datepicker({
	    dateFormat: 'yy.mm.dd',
	    prevText: '이전 달',
	    nextText: '다음 달',
	    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	    dayNames: ['일','월','화','수','목','금','토'],
	    dayNamesShort: ['일','월','화','수','목','금','토'],
	    dayNamesMin: ['일','월','화','수','목','금','토'],
	    showMonthAfterYear: true,
	    changeMonth: false,
	    changeYear: false,
	    yearSuffix: '년',
	    
	  });
});