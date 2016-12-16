<?php
defined('_JEXEC') or die;
?>

<?php
$filePath = dirname(dirname(dirname(__FILE__))) . '/includes/hmenu';
include($filePath . '/default_hmenu_' . $attribs['id'] . '.php');
?>
