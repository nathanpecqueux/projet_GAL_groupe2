<?php
defined('_JEXEC') or die;
?>

<?php
require_once dirname(dirname(dirname(dirname(__FILE__)))) . DIRECTORY_SEPARATOR . 'functions.php';
?>
<!--TEMPLATE <?php echo getCurrentTemplateByType('products'); ?> /-->
<?php
JHTML::_( 'behavior.modal' );
if (count($this->products) > 0)
    echo shopFunctionsF::renderVmSubLayout('askrecomjs', array('product'=>$this->products[0]));

require_once 'default_template.php';
?>
