<?php
defined('_JEXEC') or die;
?>

<?php
if (null === $params->get('display_text') || $params->get('display_text', 1)) {
    $label = $text;
    if ('' == str_replace(' ', '', $label))
        $label = JText::_('MOD_SYNDICATE_DEFAULT_FEED_ENTRIES');
    if ('MOD_SYNDICATE_DEFAULT_FEED_ENTRIES' == $label)
        $label = '';
} else
    $label = '';

echo '<a href="' . $link . '" class="bd-rss-tag-icon syndicate-module' . $moduleclass_sfx . '">'
  . ($label ? '<span>' . $label . '</span>' : '') . '</a>';

?>
