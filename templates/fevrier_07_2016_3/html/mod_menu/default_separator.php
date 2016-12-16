<?php
defined('_JEXEC') or die;
?>

<?php
// Note: it is important to remove spaces between elements.
$iconClassName = isset($iconClassName) ? $iconClassName : '';
$attributes = array('class' => array($iconClassName),
    'title' => $item->params->get('menu-anchor_title', ''));

$title = '<span>' . $item->title . '</span>';

$linktype = $item->menu_image
    ? ('<img class="bd-menu-image" src="' . $item->menu_image . '" alt="' . $item->title . '" />'
        . ($item->params->get('menu_text', 1) ? $title : ''))
    : $title;

if ('default' == $menutype) {
    echo '<span class="separator">' . $linktype . '</span>';
} else if ('horizontal' == $menutype || 'vertical' == $menutype || 'top' == $menutype) {
    if ('alias' == $item->type && in_array($item->params->get('aliasoptions'), $path) || in_array($item->id, $path))
        $attributes['class'][] = 'active';
    $attributes['class'][] = $item->deeper ? 'separator' : 'separator-without-submenu';
    echo funcTagBuilder('a', $attributes, $linktype);
}
?>
