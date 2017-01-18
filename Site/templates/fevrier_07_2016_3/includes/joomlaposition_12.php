<?php
function joomlaposition_12() {
    $document = JFactory::getDocument();
    $view = $document->view;
    $isPreview  = $GLOBALS['theme_settings']['is_preview'];
    if (isset($GLOBALS['isModuleContentExists']) && false == $GLOBALS['isModuleContentExists'])
        $GLOBALS['isModuleContentExists'] = $view->containsModules('position-20') ? true : false;
?>
    <?php if ($isPreview || $view->containsModules('position-20')) : ?>

    <?php if ($isPreview && !$view->containsModules('position-20')) : ?>
    <!-- empty::begin -->
    <?php endif; ?>
    <div class=" bd-joomlaposition-12 clearfix" <?php echo buildDataPositionAttr('position-20'); ?>>
        <?php echo $view->position('position-20', 'block%joomlaposition_block_12', '12'); ?>
    </div>
    <?php if ($isPreview && !$view->containsModules('position-20')) : ?>
    <!-- empty::end -->
    <?php endif; ?>
    <?php endif; ?>
<?php
}