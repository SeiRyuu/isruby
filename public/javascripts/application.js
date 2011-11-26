// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$().ready(function(){

    $(".image_and_profile_0").draggable({revert:"invalid"});
    $(".image_and_profile_1").draggable({revert:"invalid"});
    $(".image_and_profile_2").draggable({revert:"invalid"});
    $(".image_and_profile_3").draggable({revert:"invalid"});
    $(".image_and_profile_4").draggable({revert:"invalid"});
    $(".image_and_profile_5").draggable({revert:"invalid"});
    $(".drop_able_place").droppable({
        drop: function( event, ui ) {
                var left_position = $(this).position().left;
                var top_position =$(this).position().top;
                var draggable_left = ui.position.x;
                var draggable_top = ui.position.y;
				ui.draggable.css("left",left_position - 18).css("top",top_position).css("position","absolute");
                $(this).css("left",draggable_left).css("top",draggable_top)
        }
    });

});



