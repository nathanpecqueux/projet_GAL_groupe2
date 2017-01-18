<?php
/**
 * @package	   Module Sensomedia Social Bookmarks for Joomla! 2.5 and later
 * @version	   3.4.1
 * @author	   Fred Oliver
 * @copyright  Copyright (c)2012-2015 Sensomedia
 * @license    GNU General Public License version 3, or later
**/

define( '_JEXEC', 1 );
define( 'DIRECTORY_SEPARATOR', '/' );
define( 'DS', DIRECTORY_SEPARATOR );
define('JPATH_ROOT', $_SERVER['DOCUMENT_ROOT']);

require_once ( JPATH_ROOT .DS.'includes'.DS.'defines.php' );
require_once ( JPATH_ROOT .DS.'includes'.DS.'framework.php' );

/* Create the Application */
$app = JFactory::getApplication('site');

$jinput = JFactory::getApplication()->input;
$id = $jinput->get('id',false);

jimport( 'joomla.application.module.helper' );
$module = JModuleHelper::getModule( 'mod_sensomediabookmarks');

$db = JFactory::getDbo();
$query = $db->getQuery(true);
$query->select($db->quoteName(array('params')));
$query->from($db->quoteName('#__modules'));
$query->where($db->quoteName('id') . ' = '. $db->quote($id));
$db->setQuery($query);
$row = $db->loadAssoc();
$params_array = json_decode($row['params'],true);

$default_params = array(
	'align' => 'left',
	'btnsize' => 32,
	'roundcorners' => 0,
	'bgcolor' => '#2a2a2a',
	'iconscolor' => 'white',
	'color_facebook' => '#3b5997',
	'color_twitter' => '#33ccff',
	'color_googleplus' => '#d34331',
	'color_linkedin' => '#0274b3',
	'color_viadeo' => '#f4982b',
	'color_pinterest' => '#cc2127',
	'color_scoopit' => '#90d303',
	'color_myspace' => '#003399',
	'color_digg' => '#1b5791',
	'color_delicious' => '#0000ff',
	'color_stumbleupon' => '#eb4823',
	'color_reddit' => '#cee3f8',
	'color_newsvine' => '#005221',
	'color_technorati' => '#3bb001',
	'color_soundcloud' => '#ff5100',
	'color_youtube' => '#d52423',
	'color_dailymotion' => '#005377',
	'color_googlemaps' => '#f7584d',
	'color_email' => '#6a91ac',
	'color_rss' => '#ff9900',
	'color_flickr' => '#ff0084',
	'color_instagram' => '#2e5d85',
	'likebox' => '',
	'facebook_lang' => '',
	'likeboxcolor' => '#3b5997',
	'likeboxiconcolor' => 'white',
	'likeboxsize' => 132,
	'likeboxoffset' => '-28px 0 0 -60px',
	'textcolor' => ''
);

foreach(array_keys($default_params) as $param_name) {
	if(!isset($params_array[$param_name])) $params_array[$param_name] = $default_params[$param_name];
}
$params = new stdClass();
foreach ($params_array as $key => $value)
{
    $params->$key = $value;
}

header("Content-type: text/css; charset: UTF-8");

if($params->roundcorners) : ?>
#sensomediabookmarks<?php echo $id ?> ul.sensomedia_socialicons li,
#sensomediabookmarks<?php echo $id ?> .fb-panel,
#sensomediabookmarks<?php echo $id ?> .fb-main {
	border-radius: <?php echo $params->roundcorners ?>px !important;
}
<?php endif; ?>
#sensomediabookmarks<?php echo $id ?> ul.sensomedia_socialicons li a span {
	top:<?php echo round(($params->btnsize-32)/2) ?>px;
    left:<?php echo round(($params->btnsize-32)/2) ?>px;
}
#sensomediabookmarks<?php echo $id ?> .sensomediabookmarks p,
#sensomediabookmarks<?php echo $id ?> .sensomediabookmarks div,
#sensomediabookmarks<?php echo $id ?> .sensomediabookmarks h1,
#sensomediabookmarks<?php echo $id ?> .sensomediabookmarks h2,
#sensomediabookmarks<?php echo $id ?> .sensomediabookmarks h3 {
	line-height:<?php echo $params->btnsize ?>px;
	height:<?php echo $params->btnsize ?>px;
}
#sensomediabookmarks<?php echo $id ?> ul.sensomedia_socialicons li { 
	height:<?php echo $params->btnsize ?>px;
}
#sensomediabookmarks<?php echo $id ?> ul.sensomedia_socialicons li a { 
	width:<?php echo $params->btnsize ?>px;
    height:<?php echo $params->btnsize ?>px; 
}
#sensomediabookmarks<?php echo $id ?> .fb-container { 
	margin:<?php echo $params->likeboxoffset ?>;
}
#sensomediabookmarks<?php echo $id ?> .fb-main {
	width:<?php echo $params->likeboxsize ?>px;
	height:<?php echo $params->btnsize ?>px; }
#sensomediabookmarks<?php echo $id ?> .fb-panel {
	width:<?php echo $params->likeboxsize-32 ?>px;
    height:<?php echo $params->btnsize ?>px;
    background-color:<?php echo $params->likeboxcolor ?>;
    background-image:url(../images/icons/<?php echo $params->likeboxiconcolor ?>/facebook.png);
}
#sensomediabookmarks<?php echo $id ?> .facebookletter {
	line-height:<?php echo $params->btnsize ?>px;
    color:#<?php echo $params->likeboxiconcolor == 'white' ? 'fff' : '000'; ?>;
}

#sensomediabookmarks<?php echo $id ?> .smsb_icon_facebook a:hover 
{ background-color:<?php echo $params->color_facebook; ?>; }
#sensomediabookmarks<?php echo $id ?> .smsb_icon_myspace a:hover
{ background-color:<?php echo $params->color_myspace; ?>; }
#sensomediabookmarks<?php echo $id ?> .smsb_icon_twitter a:hover
{ background-color:<?php echo $params->color_twitter; ?>; }
#sensomediabookmarks<?php echo $id ?> .smsb_icon_digg a:hover
{ background-color:<?php echo $params->color_digg; ?>; }
#sensomediabookmarks<?php echo $id ?> .smsb_icon_delicious a:hover
{ background-color:<?php echo $params->color_delicious; ?>; }
#sensomediabookmarks<?php echo $id ?> .smsb_icon_stumbleupon a:hover
{ background-color:<?php echo $params->color_stumbleupon; ?>; }
#sensomediabookmarks<?php echo $id ?> .smsb_icon_reddit a:hover
{ background-color:<?php echo $params->color_reddit; ?>; }
#sensomediabookmarks<?php echo $id ?> .smsb_icon_newsvine a:hover
{ background-color:<?php echo $params->color_newsvine; ?>; }
#sensomediabookmarks<?php echo $id ?> .smsb_icon_technorati a:hover
{ background-color:<?php echo $params->color_technorati; ?>; }
#sensomediabookmarks<?php echo $id ?> .smsb_icon_linkedin a:hover
{ background-color:<?php echo $params->color_linkedin; ?>; }
#sensomediabookmarks<?php echo $id ?> .smsb_icon_viadeo a:hover
{ background-color:<?php echo $params->color_viadeo; ?>; }
#sensomediabookmarks<?php echo $id ?> .smsb_icon_rss a:hover
{ background-color:<?php echo $params->color_rss; ?>; }
#sensomediabookmarks<?php echo $id ?> .smsb_icon_scoopit a:hover
{ background-color:<?php echo $params->color_scoopit; ?>; }
#sensomediabookmarks<?php echo $id ?> .smsb_icon_googleplus a:hover
{ background-color:<?php echo $params->color_googleplus; ?>; }
#sensomediabookmarks<?php echo $id ?> .smsb_icon_soundcloud a:hover
{ background-color:<?php echo $params->color_soundcloud; ?>; }
#sensomediabookmarks<?php echo $id ?> .smsb_icon_youtube a:hover
{ background-color:<?php echo $params->color_youtube; ?>; }
#sensomediabookmarks<?php echo $id ?> .smsb_icon_pinterest a:hover
{ background-color:<?php echo $params->color_pinterest; ?>; }
#sensomediabookmarks<?php echo $id ?> .smsb_icon_dailymotion a:hover
{ background-color:<?php echo $params->color_dailymotion; ?>; }
#sensomediabookmarks<?php echo $id ?> .smsb_icon_googlemaps a:hover
{ background-color:<?php echo $params->color_googlemaps; ?>; }
#sensomediabookmarks<?php echo $id ?> .smsb_icon_email a:hover
{ background-color:<?php echo $params->color_email; ?>; }
#sensomediabookmarks<?php echo $id ?> .smsb_icon_flickr a:hover
{ background-color:<?php echo $params->color_flickr; ?>; }
#sensomediabookmarks<?php echo $id ?> .smsb_icon_instagram a:hover
{ background-color:<?php echo $params->color_instagram; ?>; }
<?php if($params->customcss) : ?>
#sensomediabookmarks<?php echo $id ?> .customizable {
	<?php echo $params->customcss; ?>
}
<?php endif; ?>
<?php if($params->customcsshover) : ?>
#sensomediabookmarks<?php echo $id ?> .customizable:hover {
	<?php echo $params->customcsshover; ?>
}
<?php endif; ?>