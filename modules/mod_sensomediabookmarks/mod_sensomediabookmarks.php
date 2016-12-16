<?php
/**
 * @package	   Module Sensomedia Social Bookmarks for Joomla! 2.5 and later
 * @version	   3.4.2
 * @author	   Fred Oliver
 * @copyright  Copyright (c)2012-2016 Sensomedia
 * @license    GNU General Public License version 3, or later
**/

defined('_JEXEC') or die;

require_once __DIR__ . '/helper.php';

$bgcolor 			= $params->get('bgcolor');
$iconscolor 		= $params->get('iconscolor');
$iconshcolor 		= $params->get('iconshcolor');
$align 				= $params->get('align');
$fblang 			= $params->get('facebook_lang');
$likebox 			= $params->get('likebox');
$likeboxcolor 		= $params->get('likeboxcolor');
$colorscheme 		= $params->get('likeboxcolorscheme');
$likeboxposition 	= $params->get('likeboxposition');
$likeboxoffset	 	= $params->get('likeboxoffset','-28px 0 0 -60px');
$likeboxsize	 	= $params->get('likeboxsize',132);
$likeboxtext	 	= $params->get('likeboxtext','Like me');
$likeboxbg	 		= $params->get('likeboxbg','transparent');
$roundcorners 		= $params->get('roundcorners',0);
$jqueryload 		= $params->get('jqueryload',1);
$text_html 			= $params->get('text');
$textformat 		= $params->get('textformat');
$textposition 		= $params->get('textposition');
$btnsize 			= $params->get('btnsize',32);

if($jqueryload) JHtml::_('behavior.framework');

$doc = JFactory::getDocument();
$doc->addStyleSheet(JRoute::_("modules/mod_sensomediabookmarks/css/style.css"));
$doc->addStyleSheet(JRoute::_("modules/mod_sensomediabookmarks/css/style.css.php?id=".$module->id));
if($likebox) $doc->addScript(JRoute::_("modules/mod_sensomediabookmarks/js/script.js"));

$icons	= ModSensomediabookmarksHelper::getSocialLinks($params);

$likebox_html = '
<div class="fb-main">
	<div class="fb-panel"><span class="facebookletter">'.$likeboxtext.'</span></div>
	<div class="fb-container" style="background-color:'.$likeboxbg.'">
		<div class="fb-like-box" data-href="'.$likebox.'" data-width="260" data-height="64" data-show-faces="false" data-colorscheme="'.$colorscheme.'" data-stream="false" data-header="false">
		</div>
	</div>
</div>';


$textcolor = $params->get('textcolor') ? ' style="color:'.$params->get('textcolor').'"' : '';
if(trim($text_html)) $text_html= '<'.$textformat.$textcolor.'>'.$text_html.'</'.$textformat.'>';
$moduleclass_sfx = htmlspecialchars($params->get('moduleclass_sfx'));


require JModuleHelper::getLayoutPath('mod_sensomediabookmarks', $params->get('layout', 'default'));
