<?php
defined('_JEXEC') or die;
?>

<?php
require_once dirname(dirname(dirname(dirname(__FILE__)))) . DIRECTORY_SEPARATOR . 'functions.php';
?>
<!--TEMPLATE <?php echo getCurrentTemplateByType('productoverview'); ?> /-->

<?php
echo shopFunctionsF::renderVmSubLayout('askrecomjs',array('product'=>$this->product));

require_once 'default_template.php';
?>
