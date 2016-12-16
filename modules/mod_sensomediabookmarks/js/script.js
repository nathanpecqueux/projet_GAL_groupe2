/**
 * @package	   Module Sensomedia Social Bookmarks for Joomla! 2.5 and later
 * @version	   3.4.2
 * @author	   Fred Oliver
 * @copyright  Copyright (c)2012-2016 Sensomedia
 * @license    GNU General Public License version 3, or later
**/

var $ja = jQuery.noConflict();
jQuery(document).ready(function(){
	jQuery(".sensomediabookmarks").each(function(i) {
		var id = jQuery(this).attr("id");
		var h = jQuery("#"+id+" .fb-panel").css('height');
		jQuery("#"+id+" .fb-main").mouseover(function() {
			jQuery("#"+id+" .fb-panel").animate({
				marginTop: h,
				height : 0
			},200);
			jQuery("#"+id+" .fb-panel .facebookletter").fadeOut(200);
		});
		jQuery("#"+id+" .fb-main").fadeIn(1).mouseleave(function() {
			jQuery("#"+id+" .fb-panel .facebookletter").fadeIn(0);
			jQuery("#"+id+" .fb-panel").animate({
				marginTop: 0,
				height : h
			},200);
		});
	});
});
