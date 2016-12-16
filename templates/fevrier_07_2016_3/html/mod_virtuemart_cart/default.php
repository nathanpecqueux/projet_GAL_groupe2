<?php
defined('_JEXEC') or die;
?>

<?php
require_once dirname(dirname(dirname(__FILE__))) . DIRECTORY_SEPARATOR . 'functions.php';

preg_match('/<a[^>]*>(.*?)<\/a>/i', $data->cart_show, $tagParts);
$cartText = $tagParts[1];
preg_match('/href="(.*?)"/i', $data->cart_show, $hrefParts);
$cartHref = $hrefParts[1];
preg_match('/(.*?)<strong[^>]*>(.*?)<\/strong>/', $data->billTotal, $matches);
$totalLabel = $matches[1];
$totalPrice = $matches[2];
$parts = isset($attribs['drstyle']) ? explode('%', $attribs['drstyle']) : array();
$data->rawProducts = $cart->products;
?>
<?php if (count($parts) > 0 && 'block' === $parts[0]) : ?>
    <div data-cart-position="<?php echo $module->position; ?>" data-style="block" data-template="<?php echo JFactory::getApplication()->getTemplate(); ?>">
	<?php if ($show_product_list and $data->totalProduct): ?>
		<?php
    		$info = pathinfo(__FILE__);
        	$file = $info['dirname'] . '/' . $info['filename']
        		. '_block.' . $info['extension'];
        	include $file;
        ?>
	<?php else: ?>
		<?php echo $data->totalProductTxt; ?>
	<?php endif; ?>
	</div>
<?php else: ?>
    <?php
        $filePath = dirname(dirname(dirname(__FILE__))) . '/includes/cartlink';
        include($filePath . '/default_cartlink_' . $attribs['id'] . '.php');
    ?>
<?php endif ?>
