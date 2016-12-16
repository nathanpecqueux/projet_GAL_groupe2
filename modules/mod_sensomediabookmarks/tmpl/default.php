<?php 
/**
 * @package	   Module Sensomedia Social Bookmarks for Joomla! 2.5 and later
 * @version	   3.4.2
 * @author	   Fred Oliver
 * @copyright  Copyright (c)2012-2016 Sensomedia
 * @license    GNU General Public License version 3, or later
**/
 
defined('_JEXEC') or die; 
?>
<?php if($likebox) : ?>
<div id="fb-root"></div>
<script>
	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id)) return;
		js = d.createElement(s); js.id = id;
		js.src = "//connect.facebook.net/<?php echo $fblang; ?>/all.js#xfbml=1";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
</script>
<?php endif; ?>
<div id="sensomediabookmarks<?php echo $module->id; ?>" class="sensomediabookmarks sensomedia_socialicons_<?php echo $align; ?> sensomedia_socialicons_<?php echo $iconscolor; ?> sensomedia_socialicons_h<?php echo $iconshcolor; ?>">
<?php 
if($textposition=="above" && $params->get('text')) echo $text_html; 
if($likebox && $likeboxposition=="above") echo '<ul class="sensomedia_socialicons"><li class="customizable">'.$likebox_html.'</li></ul>'; 
?>
<ul class="sensomedia_socialicons"><?php 
if($textposition=="before" && $params->get('text')) echo '<li>'.$text_html.'</li>';
if($likebox && $likeboxposition=="before") echo '<li class="customizable">'.$likebox_html.'</li>'; 
?><?php foreach($icons as $icon) : ?><li style="background-color:<?php echo $bgcolor; ?>" class="customizable smsb_icon_<?php echo $icon['class']; ?>"><?php echo $icon['linkcode']; ?></li><?php endforeach; ?><?php 
if($likebox && $likeboxposition=="after") echo '<li class="customizable">'.$likebox_html."</li>"; 
if($textposition=="after" && $params->get('text')) echo '<li>'.$text_html.'</li>';
?></ul>
<?php if($likebox && $likeboxposition=="below") echo '<ul class="sensomedia_socialicons"><li class="customizable">'.$likebox_html.'</li></ul>'; ?>
<?php if($textposition=="below" && $params->get('text')) echo $text_html; ?></div>
