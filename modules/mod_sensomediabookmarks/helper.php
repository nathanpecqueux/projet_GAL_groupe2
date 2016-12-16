<?php
/**
 * @package	   Module Sensomedia Social Bookmarks for Joomla! 2.5 and later
 * @version	   3.4.2
 * @author	   Fred Oliver
 * @copyright  Copyright (c)2012-2016 Sensomedia
 * @license    GNU General Public License version 3, or later
**/

defined('_JEXEC') or die;


class ModSensomediabookmarksHelper
{
	public static function hide_email($email) { 
		$character_set = '+-.0123456789@ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz'; 
		$key = str_shuffle($character_set); 
		$cipher_text = ''; 
		$id = 'e'.rand(1,999999999); 
		for ($i=0;$i<strlen($email);$i+=1) $cipher_text.= $key[strpos($character_set,$email[$i])];
		$script = 'var a="'.$key.'";var b=a.split("").sort().join("");var c="'.$cipher_text.'";var d="";';
		$script.= 'for(var e=0;e<c.length;e++)d+=b.charAt(a.indexOf(c.charAt(e)));';
		$script.= 'document.getElementById("'.$id.'").innerHTML="<a title=\\"E-mail\\" href=\\"mailto:"+d+"\\"><span></span></a>"';
		$script = "eval(\"".str_replace(array("\\",'"'),array("\\\\",'\"'), $script)."\")";
		$script = '<script type="text/javascript">/*<![CDATA[*/'.$script.'/*]]>*/</script>'; 
		return '<span id="'.$id.'">[javascript protected email address]</span>'.$script; 
	}
	
	public static function getSocialLinks(&$params) {
		$socials = array(
			"facebook",
			"twitter",
			"googleplus",
			"linkedin",
			"flickr",
			"viadeo",
			"instagram",
			"pinterest",
			"scoopit",
			"myspace",
			"digg",
			"delicious",
			"stumbleupon",
			"reddit",
			"newsvine",
			"technorati",
			"soundcloud",
			"youtube",
			"dailymotion",
			"googlemaps",
			"email",
			"rss",
		);
		
		$icons = array();
		$icon_index=0;

		foreach($socials as $social){
		$url = $params->get('url_'.$social);
		if($url) {
				$icons[$icon_index]['url'] = $url;
				$icons[$icon_index]['name'] = JText::_('MOD_SENSOMEDIABOOKMARKS_FIELD_'.strtoupper($social).'_LABEL');
				$icons[$icon_index]['class'] = $social;
				if($social=="email") {
					//JHtml::_('email.cloak',$url,1,'&nbsp;',0)
					$icons[$icon_index]['linkcode'] = strpos($url,'@')>0 
						? self::hide_email($url) 
						: '<a href="'.$url.'" title="'.$icons[$icon_index]['name'].'"><span></span></a>';
				} else {
					$icons[$icon_index]['linkcode'] = 
						'<a href="'.$url.'" title="'.$icons[$icon_index]['name'].'" target="_blank"><span></span></a>';
				}
				$icon_index++;
			}
		}
		
		return $icons;
	}
}