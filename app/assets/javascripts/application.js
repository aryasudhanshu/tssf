// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


$(document).ready(function(){

    // For the main menu
    $('.main_menu .has_dropdown').hover(
	function(){
	    $(this).children('.dropdown').slideDown(100).delay(500);
	},
	function(){
	    $(this).children('.dropdown').slideUp(200);
	}
    );

    // For tabs
    $('.tabcontents .tabcontent').hide();
    $('.tabcontents .tabcontent:first-child').show();
    $('.project_tabs .tab:first-child').addClass('active');
    $('.project_tabs .tab').click(function(){
	$('.project_tabs .tab.active').removeClass('active');
	$(this).addClass('active');
	var tgt = '#tabcontent' + $(this).attr('id').replace('tab', '');
	$('.tabcontent').hide()
	$(tgt).show();
    });

    // append tip div for every form element that has a title attribute
    $('input, select').each(function(i, el){
	el = $(el);
	var title = el.attr('title') || "";
	var width = el.width();
	if (title!="")
	    el.closest('.field').append("<div class='tip'></div>");
	el.closest('.field').children('.tip').css("left", width + 15);
	
    });
    $('input, select').focus(function(){
	var parent_field = $(this).closest('.field');
	parent_field.addClass('active');
	var title = $(this).attr("title");
	var tip_div = parent_field.children('.tip');
	if (title != tip_div.text())
	    tip_div.append(title);	
	tip_div.fadeIn(500);
    });
    $('input, select').blur(function(){
	var parent_field = $(this).closest('.field');
	parent_field.removeClass('active');
	parent_field.children('.tip').html("").fadeOut(100);	
    });
})