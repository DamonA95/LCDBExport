<!DOCTYPE html>
<html>    
    <head>
        <?php
        session_start();
        date_default_timezone_set( 'Europe/Berlin' );
        include_once('include/class/CMain.php');
        include_once('include/class/CWriteType.php');
        include_once('include/class/CExportLod.php');
        include_once('include/class/CDataScripts.php');
        $CMain = new CMain;
        $CExportLod = new CExportLod;
        $CDataScripts = new CDataScripts;
        $SiteID = $CMain->GetSiteID();
        $Do = $CMain->GetDo();
        ?>
        <title>LastChaosDatabaseExporter</title>
        <meta charset="UTF-8">
        <meta name="copyright" content="DamonA"/>
        <meta name="robots" content="all">
        <meta name="revisit-after" content="3 days">
        <link href="include/css/style.css" rel="stylesheet"  type="text/css"/>  
        <link rel="shortcut icon" type="image/x-icon" href="include/img/favicon.ico"/>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,600' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="include/js/jquery.js"></script>
        <script type="text/javascript" src="include/js/main.js"></script>
    </head>
    <body>
        <div id="header">
            <h1>[OpenSource]LC DB Exporter by DamonA </h1>                
            <hr>        
            <?php $CMain->LoadMenu( $Do ); ?>
        </div>

        <div id="maincontainer">
            <div id="main">         
                <?php
                $CMain->LoadLods( $Do, $SiteID );
                ?>
            </div>              
        </div>

        <div id="footer">
            <a href="http://www.elitepvpers.com/" target="_blank">ElitePvPers</a><br>
            Copyright &copy; DamonA @2015. All rights reserved.  
        </div>
    </body>
</html>
