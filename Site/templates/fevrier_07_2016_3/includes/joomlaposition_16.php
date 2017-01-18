<?php
function joomlaposition_16() {
    $document = JFactory::getDocument();
    $view = $document->view;
    $isPreview  = $GLOBALS['theme_settings']['is_preview'];
    if (isset($GLOBALS['isModuleContentExists']) && false == $GLOBALS['isModuleContentExists'])
        $GLOBALS['isModuleContentExists'] = $view->containsModules('position-19') ? true : false;
?>
    <?php if ($isPreview || $view->containsModules('position-19')) : ?>

    <?php if ($isPreview && !$view->containsModules('position-19')) : ?>
    <!-- empty::begin -->
    <?php endif; ?>
    <div class=" bd-joomlaposition-16 clearfix" <?php echo buildDataPositionAttr('position-19'); ?>>
        <?php echo $view->position('position-19', 'block%joomlaposition_block_16', '16'); ?>
    </div>
    <?php if ($isPreview && !$view->containsModules('position-19')) : ?>
    <!-- empty::end -->
    <?php endif; ?>
    <?php endif; ?>
<?php
}