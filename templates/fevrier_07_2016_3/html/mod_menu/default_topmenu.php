<?php
defined('_JEXEC') or die;
?>

<?php
$filePath = dirname(dirname(dirname(__FILE__))) . '/includes/topmenu';
include($filePath . '/default_topmenu_' . $attribs['id'] . '.php');
?>
