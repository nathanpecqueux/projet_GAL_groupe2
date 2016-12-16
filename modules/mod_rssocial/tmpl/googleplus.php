<?php
/**
* @package RSSocial!
* @copyright (C) 2014 www.rsjoomla.com
* @license GPL, http://www.gnu.org/licenses/gpl-2.0.html
*/

if ($params->get('mode') == 'icons') { ?>
	<li>
		<a id="rssocial-googleplus-icon" class="rssocial-link <?php echo $icon_effect; ?>" target="_blank" href="<?php echo $params->get('googleplus_url'); ?>">
			<span class="rssocial-icon rssocial-icon-gplus"></span>
		</a>
		<?php if($params->get('caption')) { ?>
		<div class="rssocial-caption">
			<a id="rssocial-googleplus-caption" target="_blank" href="<?php echo $params->get('googleplus_url'); ?>">
				<?php echo JText::_('MOD_RSSOCIAL_GOOGLEPLUS_TEXT'); ?>
			</a>
		</div>
		<?php } ?>	
	</li>
<?php
} else { ?>
	<li id="rssocial-sharing-button" class="rssocial-sharing-googleplus-<?php echo $params->get('googleplus_style'); echo '-' . $sharing_alignment; ?>">
		<script type="text/javascript" src="//apis.google.com/js/plusone.js">
			{lang: <?php echo '\'' . JFactory::getLanguage()->getTag() . '\'' ;?>}</script>
		<g:plusone size="<?php echo $params->get('googleplus_style'); ?>" href="<?php echo $current_url; ?>"></g:plusone>
	</li>
<?php } ?>