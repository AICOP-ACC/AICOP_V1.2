$(document).ready(function(){
$(".open-button").on("click", function() {
  $(this).closest('.collapse-group').find('.collapse').collapse('show');
});

$(".close-button").on("click", function() {
  $(this).closest('.collapse-group').find('.collapse').collapse('hide');
});

$('.aicop-collapse').on("click",function(){
	var eleId = "#"+$(this).attr('id');
	console.log("eleId-->"+eleId);
	if($(this).hasClass("fa fa-plus-circle")){
		
		$(eleId).removeClass("fa fa-plus-circle");
		$(eleId).addClass("fa fa-minus-circle");
	}
	else{
		$(eleId).removeClass("fa fa-minus-circle");
		$(eleId).addClass("fa fa-plus-circle");
	}
})

$('#confInit').on('click',function(){
	console.log("On click confInit");
})
$('#confTerminate').on('click',function(){
	console.log("On click confTerminate");
})
$('#shareBridge').on('click',function(){
	console.log("On click shareBridge");
})

$('#notesIcon').on('click',function(){
	console.log("On click notesIcon");
})

$('#impactedAppl').on('click',function(){
	console.log("On select");
	var selOpt = $(this).text();
	console.log("selected option::"+selOpt);
})
$( "#impactedAppl" ).change(function () {
	console.log("onchange");
    var str = ""; 
    var populateStr = "";
    $( "#impactedAppl option:selected" ).each(function() {
    	var eachOpt = $( this ).text()
    	populateStr += "<span class='tag'><span>"+eachOpt+"&nbsp;&nbsp;</span><a href='#' title='Removing tag'>x</a></span>";
      str += $( this ).text() + " ";
    });
   // $( "#divId" ).text( str );
    populateStr += '<div id="tags_1_addTag"><input id="tags_1_tag" value="" data-default="add a tag" style="color: rgb(102, 102, 102); width: 72px;"></div><div class="tags_clear"></div>';
    $('#tags_1_tagsinput').html(populateStr);
  })
  .change();


    $('[data-toggle="tooltip"]').tooltip(); 
    //var currentActionTable = $('#currActionTable').dataTable();
    
   var currActionTable = $('.currActionTable').dataTable({
        'bFilter': false,
        'bInfo': false,
        'bPaginate': false,
      });
  
   


$(".addRow").on("click", function() {
	var row = ['','','','','','<form><select><option>Not Started</option><option>In Progress</option><option>Completed</option></select></form>','','','','<form><select><option>--Please Select--</option><option>Success</option><option>Failure</option></select></form>','<div class="text-center"><a data-toggle="tooltip" title="Remove Actions"><span class="fa fa-minus-circle fa-lg  text-danger"></span></a></div>'];
	var table = $('.currActionTable').DataTable();
	table.row.add(row).draw();
	//table.order([0, 'asc']).draw();
    //table.page('first').draw(false);
	
});



$(".saveRow").on("click", function() {
	console.log("save Row");
	});


//Dashboard Title
$("#executiveViewNav").on("click", function() {
	$("#dashBoardTitle a").text("Executive View");
	});

$("#detailedViewNav").on("click", function() {
	$("#dashBoardTitle a").text("Detailed View");
	});



});