<!DOCTYPE html>
<html dir="ltr">
<head>
	<meta charset="utf-8" />
    <?php
        $base = $document->getBase();
        if (!empty($base)) {
            echo '<base href="' . $base . '" />';
            $document->setBase('');
        }
    ?>
    <link href="<?php echo JURI::base() . 'templates/' . JFactory::getApplication()->getTemplate(); ?>/images/designer/942476_bd_media_id_6d3e1796448202596b174e87c578bf2a.png" rel="icon" type="image/x-icon" />
    <script>
    var themeHasJQuery = !!window.jQuery;
</script>
<script src="<?php echo addThemeVersion($document->templateUrl . '/jquery.js'); ?>"></script>
<script>
    window._$ = jQuery.noConflict(themeHasJQuery);
</script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="<?php echo addThemeVersion($document->templateUrl . '/bootstrap.min.js'); ?>"></script>
<!--[if lte IE 9]>
<script src="<?php echo addThemeVersion($document->templateUrl . '/layout.ie.js'); ?>"></script>
<link rel="stylesheet" href="<?php echo addThemeVersion($document->templateUrl . '/layout.ie.css'); ?>" media="screen"/>
<![endif]-->
<link class="" href='//fonts.googleapis.com/css?family=Open+Sans:300,300italic,regular,italic,600,600italic,700,700italic,800,800italic&subset=latin' rel='stylesheet' type='text/css'>
<script src="<?php echo addThemeVersion($document->templateUrl . '/layout.core.js') ?>"></script>
<script src="<?php echo addThemeVersion($document->templateUrl . '/CloudZoom.js'); ?>" type="text/javascript"></script>
    
    <?php echo $document->head; ?>
    <?php if ($GLOBALS['theme_settings']['is_preview'] || !file_exists($themeDir . '/css/bootstrap.min.css')) : ?>
    <link rel="stylesheet" href="<?php echo addThemeVersion($document->templateUrl . '/css/bootstrap.css'); ?>" media="screen" />
    <?php else : ?>
    <link rel="stylesheet" href="<?php echo addThemeVersion($document->templateUrl . '/css/bootstrap.min.css'); ?>" media="screen" />
    <?php endif; ?>
    <?php if ($GLOBALS['theme_settings']['is_preview'] || !file_exists($themeDir . '/css/template.min.css')) : ?>
    <link rel="stylesheet" href="<?php echo addThemeVersion($document->templateUrl . '/css/template.css'); ?>" media="screen" />
    <?php else : ?>
    <link rel="stylesheet" href="<?php echo addThemeVersion($document->templateUrl . '/css/template.min.css'); ?>" media="screen" />
    <?php endif; ?>
    <?php if(('edit' == JRequest::getVar('layout') && 'form' == JRequest::getVar('view')) ||
        ('com_config' == JRequest::getVar('option') && 'config.display.modules' == JRequest::getVar('controller'))) : ?>
    <link rel="stylesheet" href="<?php echo addThemeVersion($document->templateUrl . '/css/media.css'); ?>" media="screen" />
    <script src="<?php echo addThemeVersion($document->templateUrl . '/js/template.js'); ?>"></script>
    <?php endif; ?>
    <script src="<?php echo addThemeVersion($document->templateUrl . '/script.js'); ?>"></script>
    
</head>
<body class=" bootstrap bd-body-2 bd-pagebackground">
    <header class=" bd-headerarea-1">
        <div class=" bd-layoutbox-1 clearfix">
    <div class="bd-container-inner">
        <div class=" bd-headline-4">
    <div class="bd-container-inner">
        <h3>
            <a <?php echo funcBuildRoute(JFactory::getDocument()->baseurl, 'href'); ?>>
            <?php echo getThemeParams('siteTitle'); ?>
            </a>
        </h3>
    </div>
</div>
	
		<div class=" bd-slogan-3">
    <div class="bd-container-inner">
        <?php echo getThemeParams('siteSlogan'); ?>
    </div>
</div>
    </div>
</div>
	
		<div class=" bd-customhtml-2 bd-tagstyles">
    <div class="bd-container-inner bd-content-element">
        <?php
echo <<<'CUSTOM_CODE'
<hr style="width:100px; height:2px;border-width:0;color:gray;background-color:gray">
CUSTOM_CODE;
?>
    </div>
</div>
	
		<div class=" bd-layoutbox-6 clearfix">
    <div class="bd-container-inner">
        <?php
    renderTemplateFromIncludes('hmenu_3', array());
?>
    </div>
</div>
	
		<?php 
    renderTemplateFromIncludes('breadcrumbs_8');
?>
</header>
	
		<div class=" bd-stretchtobottom-6 bd-stretch-to-bottom" data-control-selector=".bd-contentlayout-2">
<div class="bd-contentlayout-2 bd-page-width   bd-sheetstyles " >
    <div class="bd-container-inner">

        
        <div class="bd-flex-vertical bd-stretch-inner">
            
 <?php renderTemplateFromIncludes('sidebar_area_1'); ?>
            <div class="bd-flex-horizontal bd-flex-wide">
                
 <?php renderTemplateFromIncludes('sidebar_area_3'); ?>
                <div class="bd-flex-vertical bd-flex-wide">
                    
 <?php renderTemplateFromIncludes('sidebar_area_2'); ?>

                    <div class=" bd-layoutitemsbox-18 bd-flex-wide">
    <div class=" bd-content-2">
    <div class="bd-container-inner">
        <?php
            $document = JFactory::getDocument();
            echo $document->view->renderSystemMessages();
            $document->view->componentWrapper('common');
            echo '<jdoc:include type="component" />';
        ?>
    </div>
</div>
</div>

        
                    
 <?php renderTemplateFromIncludes('sidebar_area_5'); ?>
                </div>
                
            </div>
            
 <?php renderTemplateFromIncludes('sidebar_area_4'); ?>
        </div>

    </div>
</div></div>
	
		<div class="bd-containereffect-8 container "><div class=" bd-layoutbox-17  clearfix">
    <div class="bd-container-inner">
        <div class=" bd-layoutcontainer-16 bd-columns">
    <div class="bd-container-inner">
        <div class="container-fluid">
            <div class="row ">
                <div class=" bd-columnwrapper-73 
 col-lg-10
 col-md-9
 col-sm-8">
    <div class="bd-layoutcolumn-73 bd-column" ><div class="bd-vertical-align-wrapper"><div class=" bd-socialicons-7">
    
        <a target="_blank" class=" bd-socialicon-29 bd-socialicon" href="//www.facebook.com/sharer.php?u=https%3A%2F%2Fwww.facebook.com%2Flogin.php%3Fskip_api_login%3D1%26api_key%3D966242223397117%26signed_next%3D1%26next%3Dhttps%253A%252F%252Fwww.facebook.com%252Fv2.3%252Fdialog%252Fshare%253Fredirect_uri%253Dhttps%25253A%25252F%25252Fwww.facebook.com%25252Fdialog%25252Freturn%25252Fclose%2526display%253Dpopup%2526href%253Dhttps%25253A%25252F%25252Ffr-fr.facebook.com%25252Flogin%25252F%2526client_id%253D966242223397117%2526ret%253Dlogin%26cancel_url%3Dhttps%253A%252F%252Fwww.facebook.com%252Fdialog%252Freturn%252Fclose%253F%2523_%253D_%26display%3Dpopup">
    <span class="bd-icon"></span><span></span>
</a>
    
        <a target="_blank" class=" bd-socialicon-30 bd-socialicon" href="//twitter.com/share?url=&amp;text=">
    <span class="bd-icon"></span><span></span>
</a>
    
        <a target="_blank" class=" bd-socialicon-31 bd-socialicon" href="//plus.google.com/share?url=">
    <span class="bd-icon"></span><span></span>
</a>
    
        <a target="_blank" class=" bd-socialicon-32 bd-socialicon" href="//pinterest.com/pin/create/button/?url=&amp;media=&amp;description=">
    <span class="bd-icon"></span><span></span>
</a>
    
    
    
    
    
    
</div></div></div>
</div>
	
		<div class=" bd-columnwrapper-72 
 col-lg-2
 col-md-3
 col-sm-4">
    <div class="bd-layoutcolumn-72 bd-column" ><div class="bd-vertical-align-wrapper"><form id="search-14" role="form" class=" bd-search-14 form-inline" name="search" <?php echo funcBuildRoute(JFactory::getDocument()->baseurl . '/index.php', 'action'); ?> method="post">
    <div class="bd-container-inner">
        <input type="hidden" name="task" value="search">
        <input type="hidden" name="option" value="com_search">
        <div class="bd-search-wrapper">
            
                
                <div class="bd-input-wrapper">
                    <input type="text" name="searchword" class=" bd-bootstrapinput-17 form-control" placeholder="Search">
                </div>
                
                <div class="bd-button-wrapper">
                    <input type="submit" class=" bd-button-23" value="<?php echo JText::_('TPL_SEARCH_BUTTON_VALUE'); ?>" link-disable="true">
                </div>
        </div>
        <script>
            (function (jQuery, $) {
                jQuery('.bd-search-14 .bd-icon-55').on('click', function (e) {
                    e.preventDefault();
                    jQuery('#search-14').submit();
                });
            })(window._$, window._$);
        </script>
    </div>
</form></div></div>
</div>
            </div>
        </div>
    </div>
</div>
    </div>
</div>
</div>
	
		<div class=" bd-stretchtobottom-7 bd-stretch-to-bottom" data-control-selector=".bd-footerarea-1"><footer class=" bd-footerarea-1 ">
        <div class=" bd-layoutcontainer-28 bd-page-width  bd-columns">
    <div class="bd-container-inner">
        <div class="container-fluid">
            <div class="row 
 bd-row-flex 
 bd-row-align-top">
                <div class=" bd-columnwrapper-61 
 col-sm-4">
    <div class="bd-layoutcolumn-61 bd-column" ><div class="bd-vertical-align-wrapper"><?php
    renderTemplateFromIncludes('joomlaposition_3');
?></div></div>
</div>
	
		<div class=" bd-columnwrapper-62 
 col-sm-4">
    <div class="bd-layoutcolumn-62 bd-column" ><div class="bd-vertical-align-wrapper"><?php
    renderTemplateFromIncludes('joomlaposition_4');
?></div></div>
</div>
	
		<div class=" bd-columnwrapper-63 
 col-sm-4">
    <div class="bd-layoutcolumn-63 bd-column" ><div class="bd-vertical-align-wrapper"><?php
    renderTemplateFromIncludes('joomlaposition_5');
?></div></div>
</div>
            </div>
        </div>
    </div>
</div>
</footer></div>
	
		<div data-smooth-scroll data-animation-time="250" class=" bd-smoothscroll-3"><a href="#" class=" bd-backtotop-1 ">
    <span class="bd-icon-66 bd-icon "></span>
</a></div>
</body>
</html>